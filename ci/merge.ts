import { Octokit } from 'octokit'

import { searchSrc } from './util/src.js'

const kit = new Octokit({ auth: process.env.GITHUB_TOKEN })

const repos = {
    fork: {
        owner: 'ghostrider-05',
        repo: 'RL-Dummy-Classes',
    },
    main: {
        owner: 'RocketLeagueMapMaking',
        repo: 'RL-Dummy-Classes'
    }
}

const files = searchSrc()
