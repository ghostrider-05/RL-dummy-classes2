import { sep } from 'node:path'

import { OctokitUtil } from '../util/octokit.js'
import { askInput } from '../util/process.js'
import { searchSrc } from '../util/src.js'

const askYesNo = async (query: string) => (await askInput(query)).toLowerCase().startsWith('y')
const kit = new OctokitUtil({ auth: process.env.GITHUB_TOKEN })

const names = await askInput('Which classes do you want to merge? ')
    .then(answer => answer.split(','))

const files = await searchSrc(...names)

const title = 'synchronize: ' + await askInput('The title of the PR: ')
const branch = 'sync/' + await askInput('The branch name for the PR: ')
const commitMsg = await askInput('The commit message in the PR: ')

const description = await kit.descriptions.createPullRequest('update', files, kit.repos.fork, branch)
console.log(`Uploading ${files.length} classes...`)

await kit.uploadToRepo(
    files.map(([,, path]) => 'Src' + sep + path),
    kit.repos.fork,
    branch,
    commitMsg
)

if (await askYesNo('Create a new PR (y/n): ')) {
    await kit.createMainPullRequest(kit.repos.main, { title, description }, { branch, ...kit.repos.fork })
} else if (await askYesNo('Update a PR (y/n): ')) {
    const number = await askInput('Pull number: ').then(Number)

    await kit.updateMainPullRequest(kit.repos.main, { 
        title, 
        description,
        number,
    })
}

console.log('Finished pull request...')
process.exit(0)
