import { Octokit } from 'octokit'

import { askInput } from './util/process.js'
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

const names = await askInput('Which classes do you want to merge? ')
    .then(answer => answer.split(','))

const files = await searchSrc(...names)

// TODO: add option to merge with /RL-Dummy-Classes repo?
