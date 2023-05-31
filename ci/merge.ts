import { createDescription, OctokitUtil, type Repo } from './util/octokit.js'
import { askInput } from './util/process.js'
import { searchSrc } from './util/src.js'

const askYesNo = async (query: string) => (await askInput(query)).toLowerCase().startsWith('y')
const kit = new OctokitUtil({ auth: process.env.GITHUB_TOKEN })

const repos = {
    fork: {
        owner: 'ghostrider-05',
        repo: 'RL-Dummy-Classes',
    },
    main: {
        owner: 'RocketLeagueMapMaking',
        repo: 'RL-Dummy-Classes'
    }
} satisfies Record<string, Repo>

const names = await askInput('Which classes do you want to merge? ')
    .then(answer => answer.split(','))

const files = await searchSrc(...names)

const title = 'synchronize: ' + await askInput('The title of the PR: ')
const branch = 'sync/' + await askInput('The branch name for the PR: ')
const commitMsg = await askInput('The commit message in the PR: ')

const description = await createDescription(files, 
    `https://github.com/${repos.fork.owner}/${repos.fork.repo}/archive/refs/heads/${branch}.zip`
)
console.log(`Uploading ${files.length} classes...`)

await kit.uploadToRepo(
    files.map(([,, path]) => path),
    repos.fork,
    branch,
    commitMsg
)

if (await askYesNo('Create a new PR (y/n): ')) {
    await kit.createMainPullRequest(repos.main, { title, description }, { branch, ...repos.fork })
} else if (await askYesNo('Update a PR (y/n): ')) {
    const number = await askInput('Pull number: ').then(Number)

    await kit.updateMainPullRequest(repos.main, { 
        title, 
        description,
        number,
    })
}

console.log('Finished pull request...')
