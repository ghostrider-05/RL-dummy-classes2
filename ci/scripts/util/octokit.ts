import { Octokit } from 'octokit'

import { readFile } from './process.js'

import { OctokitDescriptionUtil, type Repo } from './github/description.js'
import { GitUtil } from './github/git.js'

export interface OctokitUtilOptions {
    auth: string
    /** @default 'master' */
    mainBranch?: string
}

export class OctokitUtil extends GitUtil {
    private kit: Octokit
    private main_branch: string

    public descriptions = new OctokitDescriptionUtil()

    public repos = {
        dummy2: {
            owner: 'ghostrider-05',
            repo: 'RL-dummy-classes2',
            mainBranch: 'main',
        },
        fork: {
            owner: 'ghostrider-05',
            repo: 'RL-Dummy-Classes',
        },
        main: {
            owner: 'RocketLeagueMapMaking',
            repo: 'RL-Dummy-Classes',
        },
    } satisfies Record<string, Repo>

    public constructor (options: OctokitUtilOptions) {
        super();

        this.main_branch = options.mainBranch ?? 'master'
        this.kit = new Octokit({ 
            auth: options.auth,
        })
    }

    public getMainBranch (repo: Repo) {
        return repo.mainBranch ?? this.main_branch
    }

    protected async createNewTree (
        repo: Repo,
        blobs: { sha: string }[],
        paths: string[],
        parentTreeSha: string
    ) {
        const tree = blobs.map(({ sha }, index) => ({
            path: paths[index],
            mode: '100644' as '100644',
            type: 'blob' as 'blob',
            sha,
        }))
        const { data } = await this.kit.rest.git.createTree({
            ...repo,
            tree,
            base_tree: parentTreeSha,
        })
        return data
    }

    protected createBlobForFile (repo: Repo) {
        return async (filePath: string) => {
            const getFileAsUTF8 = async (filePath: string) => {
                // const path = filePath.endsWith('uc') ? './Src/' + filePath : filePath
                return await readFile(filePath)
            }
        
            const content = await getFileAsUTF8(filePath)
            return await this.kit.rest.git.createBlob({
                ...repo,
                content,
                encoding: 'utf-8',
            }).then(d => d.data)
        }
    }

    protected async getCurrentCommit (
        repo: Repo,
        branch: string
    ) {
        const { 
            data: { object: { sha } }
        } = await this.kit.rest.git.getRef({
            ...repo,
            ref: `heads/${branch}`,
        }).catch(async err => {
            const mainBranch = await this.kit.rest.git.getRef({
                ...repo,
                ref: `heads/${this.getMainBranch(repo)}`,
            })

            return await this.kit.rest.git.createRef({
                ...repo,
                ref: `refs/heads/${branch}`,
                sha: mainBranch.data.object.sha,
            })
        })

        const { data: commitData } = await this.kit.rest.git.getCommit({
            ...repo,
            commit_sha: sha,
        })

        return {
            commitSha: sha,
            treeSha: commitData.tree.sha,
        }
    }

    protected async createNewCommit (
        repo: Repo,
        message: string,
        currentTreeSha: string,
        currentCommitSha: string
    ) {
        return await this.kit.rest.git.createCommit({
            ...repo,
            message,
            tree: currentTreeSha,
            parents: [currentCommitSha],
        }).then(res => res.data)
    }

    protected setBranchToCommit (
        repo: Repo,
        branch: string,
        commitSha: string
    ) {
        return this.kit.rest.git.updateRef({
            ...repo,
            ref: `heads/${branch}`,
            sha: commitSha,
        })
    }

    public async uploadToRepo (
        paths: string[],
        repo: Repo,
        branch: string,
        commitMessage: string, 
    ) {
        // gets commit's AND its tree's SHA
        const currentCommit = await this.getCurrentCommit(repo, branch)
        const filesBlobs = await Promise.all(paths.map(this.createBlobForFile(repo)))
    
        const newTree = await this.createNewTree(
            repo,
            filesBlobs,
            paths,
            currentCommit.treeSha
        )
        const newCommit = await this.createNewCommit(
            repo,
            commitMessage,
            newTree.sha,
            currentCommit.commitSha
        )

        await this.setBranchToCommit(repo, branch, newCommit.sha)
    }

    /**
     * Create a pull request to the main branch on `repo` 
     * @param repo The main repo
     * @param pull Pull request data
     * @param headRepo If the current repo is different from the main repo
     */
    public async createMainPullRequest (
        repo: Repo,
        data: { 
            title: string,
            description: string
        },
        from: Partial<Repo> & { branch: string },
    ) {
        return await this.kit.rest.pulls.create({
            ...repo,
            base: this.getMainBranch(repo),
            head: from.branch,
            maintainer_can_modify: true,
            title: data.title,
            body: data.description,
            head_repo: from.repo != undefined ? `${from.owner}/${from.repo}` : undefined,
        }).then(res => res.data)
    }

    public async updateMainPullRequest (
        repo: Repo,
        data: { 
            title?: string,
            description?: string,
            number: number,
            state?: 'open' | 'closed'
        },
    ) {
        await this.kit.rest.pulls.update({
            ...repo,
            pull_number: data.number,
            title: data.title,
            body: data.description,
            state: data.state,
        })
    }
}
