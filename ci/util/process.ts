import { spawn } from 'node:child_process'
import { resolve } from 'node:path';
import { existsSync } from 'node:fs';
import { copyFile, mkdir, readdir, writeFile } from 'node:fs/promises';

import { LocalClassesInstallation } from '@kismet.ts/parsers-node'

declare global {
    namespace NodeJS {
        interface ProcessEnv {
            VERSION: string;
            EXTRACTED_SRC: string;
            UDK_SRC: string;
            UDK_SRC_DUMMY: string;
            UDK_CMD: string;
        }
    }
}

export function createProcess (
    cmd: string,
    args: string[],
    options: {
        cwd?: string,
    } & Partial<Record<'onError' | 'onMessage', (data: string) => void>>,
) {
    return new Promise<number | null>((resolve) => {
        const proc = spawn(cmd, args, { cwd: options.cwd })

        proc.stdout.on('data', (data: Buffer) => {
            options.onMessage?.(data.toString())
        });

        proc.stderr.on('data', (data: Buffer) => {
            options.onError?.(data.toString())
        });

        proc.on('close', (code) => resolve(code))
    })
}

export async function writeChangelog (src: string) {
    const local = new LocalClassesInstallation(process.env.UDK_SRC_DUMMY, { 
        path: process.env.EXTRACTED_SRC, 
        packageNames: ['Engine'] 
    })

    const diff = local.compare(src)
    const commit = '5792da090da1951ceec8ed6a71ff3acd6c4eda45'

    const content = LocalClassesInstallation.createChangelog(diff, {
        description: `Changes between an installation with [dummy classes](https://github.com/RocketLeagueMapmaking/RL-Dummy-Classes/tree/${commit}) and autogenerated dummy classes (${process.env.VERSION})`
    })

    await writeFile('./CHANGELOG.md', content)
}

export async function copySrc () {
    const packages = await readdir(resolve('.', './Src/'))
    for (const pkg of packages) {
        const files = await readdir(resolve('.', `./Src/${pkg}/Classes`));

        for (const file of files) {
            const folder = resolve(process.env.UDK_SRC, `./${pkg}/Classes/`)
            if(!existsSync(folder)) {
                mkdir(folder, { recursive: true})
            }

            await copyFile(
                resolve('.', `./Src/${pkg}/Classes/${file}`),
                resolve(process.env.UDK_SRC, `./${pkg}/Classes/${file}`)
            )
        }
    }
}