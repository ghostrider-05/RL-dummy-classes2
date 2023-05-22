import { resolve } from 'node:path';
import { existsSync } from 'node:fs';
import { copyFile, mkdir, readdir, writeFile } from 'node:fs/promises';

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

/**
 * @param fileNames The names of the class(es) to search
 * @throws When a file is not found
 */
export async function searchSrc (...fileNames: string[]) {
    const packages = await readdir(resolve('.', './Src/'))
    const found: [pkg: string, cls: string][] = []

    for (const pkg of packages) {
        const files = await readdir(resolve('.', `./Src/${pkg}/Classes`));
        for (const cls of files) {
            const name = cls.split('.')[0]

            if (fileNames.includes(name) && !found.some(([, cls]) => name === cls)) {
                found.push([pkg, cls])
            }
        }
    }

    if (found.length !== fileNames.length) {
        const missing = fileNames.filter(name => !found.some(([, cls]) => name === cls))
        throw new Error(`Unable to find all classes in Src: ${missing}`)
    }

    return found
}

