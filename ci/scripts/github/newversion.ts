import { OctokitUtil } from "../util/octokit.js";
import { parseFile } from '../util/process.js'

const config = await parseFile<{ Version: string }>('./config.json')

const kit = new OctokitUtil({ auth: process.env.GITHUB_TOKEN })

const version = 'v' + config.Version
const branch = 'update/' + version.replace('.', '')
const repo = kit.repos.dummy2

const files = await kit.getCurrentModifiedFiles('uc', [
        'CHANGELOG.md',
        'README.md',
        'config.toml',
        'ci/changelog/classes.json',
        'ci/changelog/extracted-schema.json',
        'ci/changelog/extracted.json',
        'ci/changelog/kismet.json',
])

const downloadUrl = kit.descriptions.getDownloadLink(repo, branch)
const description = await kit.descriptions.createPullRequest('newVersion', files, downloadUrl)

const title = 'Update to Rocket League ' + version

console.log(`Uploading ${files.length} classes...`)

await kit.uploadToRepo(
    files.map(({ src }) => {
        const [,, path] = src
        return path
    }),
    repo,
    branch,
    `update dummy classes to ${version}`,
)

const prNumber = await kit.createMainPullRequest(repo, {
    title,
    description,
}, { branch })

await kit.updatePullRequestState(repo, {
    labels: ['patch update'],
    number: prNumber,
})

console.log('Finished pull request...')
process.exit(0)
