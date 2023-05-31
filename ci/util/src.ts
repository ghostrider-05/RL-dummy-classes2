import { resolve } from 'node:path';
import { existsSync } from 'node:fs';
import { copyFile, mkdir, readdir, writeFile } from 'node:fs/promises';

export type SrcFile = [
    pkg: string,
    cls: string,
    path: string,
    absPath: string,
]

async function iterateOverSrc <R>(
    onFile: (name: string, pkg: string, collected: R[]) => Promise<R | undefined> | (R | undefined)
): Promise<R[]> {
    const collected: R[] = []

    const packages = await readdir(resolve('.', './Src/'))
    for (const pkg of packages) {
        const files = await readdir(resolve('.', `./Src/${pkg}/Classes`))

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
