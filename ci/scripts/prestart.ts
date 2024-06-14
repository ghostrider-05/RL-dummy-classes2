import { readFile, writeFile } from 'node:fs/promises'
import { resolve } from 'node:path'

import { parse } from '@iarna/toml'

const tomlToJSON = async (name: string) => {
    const content = await readFile(resolve('.', `${name}.toml`), { encoding: 'utf8' })

    await writeFile(
        resolve('.', `${name}.json`), 
        JSON.stringify(parse(content), null, 4),
        { encoding: 'utf8' }
    )
}

await tomlToJSON('config')
await tomlToJSON('description')

process.exit(0)
