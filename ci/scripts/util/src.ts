import { basename, resolve, dirname } from 'node:path';
import { existsSync } from 'node:fs';
import { copyFile, mkdir, readdir } from 'node:fs/promises';

import { parseFile, writeFile } from './process.js'

export type SrcFile = [
    pkg: string,
    cls: string,
    path: string,
    absPath: string,
]

async function iterateOverSrc <R>(
    onFile: (name: string, pkg: string, collected: R[]) => Promise<R | undefined> | (R | undefined),
    subDirectory = 'Classes',
): Promise<R[]> {
    const collected: R[] = []

    const packages = await readdir(resolve('.', './Src/'))
    for (const pkg of packages) {
        const folderPath = resolve('.', `./Src/${pkg}/${subDirectory}`)
        if (!existsSync(folderPath)) continue;

        const files = await readdir(folderPath)

        for (const file of files) {
            const value = await onFile(file, pkg, collected)
            if (value != undefined) {
                collected.push(value)
            }
        }
    }

    return collected
}

export async function copySrc () {
    await iterateOverSrc(async (file, pkg) => {
        const folder = resolve(process.env.UDK_SRC, `./${pkg}/Classes/`)
        if(!existsSync(folder)) {
            await mkdir(folder, { recursive: true})
        }

        await copyFile(
            resolve('.', `./Src/${pkg}/Classes/${file}`),
            resolve(process.env.UDK_SRC, `./${pkg}/Classes/${file}`)
        )
    })

    console.log('Copying JSON classes')
    const objects: object[] = []

    // Copy JSON files to one output file
    await iterateOverSrc(async (file, pkg) => {
        const json = await parseFile<object>(`Src/${pkg}/out/json/${file}`)
        objects.push(json)
    }, 'out/json')

    await writeFile('./ci/changelog/extracted.json', JSON.stringify(objects))
}

export function getFileDetails (path: string): SrcFile {
    return [
        dirname(path.replace('/Classes', '').replace('Src/', '')),
        basename(path).replace('.uc', ''),
        path,
        resolve('.', path)
    ]
}

/**
 * @param fileNames The names of the class(es) to search
 * @throws When a file is not found
 */
export async function searchSrc (...fileNames: string[]): Promise<SrcFile[]> {
    const found = await iterateOverSrc<SrcFile>((cls, pkg, found) => {
        const name = cls.split('.')[0]

        if (fileNames.includes(name) && !found.some(([, cls]) => name === cls)) {
            const path = `${pkg}/Classes/${cls}`
            return [pkg, cls, path, resolve('.', `./Src/${path}`)]
        }
    })

    if (found.length !== fileNames.length) {
        const missing = fileNames.filter(name => !found.some(([, cls]) => name === cls))
        throw new Error(`Unable to find all classes in Src: ${missing}`)
    }

    return found
}
