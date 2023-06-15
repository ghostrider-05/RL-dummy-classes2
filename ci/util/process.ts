import { spawn } from 'node:child_process'
import { createInterface } from 'node:readline'
import { 
    writeFile as write,
    readFile as read,
} from 'node:fs/promises'
import { resolve } from 'node:path'

import { LocalClassesInstallation } from '@kismet.ts/parsers-node'

declare global {
    namespace NodeJS {
        interface ProcessEnv {
            COOKED_PCCONSOLE_FOLDER: string
            DUMMY_CLASSES_SHA: string;
            DUMMY_CLASSES_FORK_SHA: string;
            GITHUB_TOKEN: string;
            EXTRACTED_SRC: string;
            UDK_SRC: string;
            UDK_SRC_DUMMY: string;
            UDK_CMD: string;
        }
    }
}

export const readFile = (path: string) => read(resolve('.', path), { encoding: 'utf8' })
export const writeFile = (path: string, data: string) => write(resolve('.', path), data, { encoding: 'utf8' })

export const parseFile = async <T>(path: string) => await readFile(path)
    .then(txt => JSON.parse(txt) as T)

export const interpolate = (content: string, options: Record<string, unknown>) => {
    return Object
        .keys(options)
        .reduce((txt, key) => txt.replaceAll(
            `{{${key}}}`,
            new String(options[key]).toString()
        ), content)
}

export function createProcess (
    cmd: string,
    args: string[],
    options: {
        cwd?: string,
        error?: {
            filter?: (code: number | null) => boolean,
            message: string,
        },
        onStart?: () => void,
    } & Partial<Record<'onError' | 'onMessage', (data: string) => void>>,
) {
    return new Promise<number | null>((resolve, reject) => {
        const proc = spawn(cmd, args, { cwd: options.cwd })
        options.onStart?.()

        proc.stdout.on('data', (data: Buffer) => {
            options.onMessage?.(data.toString())
        });

        proc.stderr.on('data', (data: Buffer) => {
            options.onError?.(data.toString())
        });

        proc.on('close', (code) => {
            const rejected = options.error != undefined 
                && (options.error.filter ?? ((code) => code !== 0))(code)

            if (rejected) {
                reject(options.error!.message);
            } else {
                resolve(code)
            }
        })
    })
}

export async function writeChangelog (src: string) {
    const local = new LocalClassesInstallation(process.env.UDK_SRC_DUMMY, { 
        path: process.env.EXTRACTED_SRC, 
        packageNames: ['Engine', 'GameFramework', 'SubstanceAir'],
    })

    const diff = local.compare(src)
    const commit = process.env.DUMMY_CLASSES_SHA
    const version: string = await readFile('./config.json')
        .then(txt => JSON.parse(txt).Version)

    const content = LocalClassesInstallation.createChangelog(diff, {
        difference: { 
            includeKismet: true 
        },
        description: `Changes between an installation with [dummy classes](https://github.com/RocketLeagueMapmaking/RL-Dummy-Classes/tree/${commit}) and autogenerated dummy classes (${version})`
    })

    await writeFile('./ci/changelog/kismet.json', local.formatClasses(diff, 'kismet'))
    await writeFile('./ci/changelog/classes.json', local.formatClasses(diff))
    await writeFile('./CHANGELOG.md', content)
}

const rl = createInterface({
    input: process.stdin,
    output: process.stdout,
})

export async function askInput (query: string): Promise<string> {
    return new Promise<string>(resolve => {
        rl.question(query, (answer) => resolve(answer))
    })
}
