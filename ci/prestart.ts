import { readFile, writeFile } from 'node:fs/promises'
import { resolve } from 'node:path'

import { parse } from '@iarna/toml'

const descriptions = await readFile(resolve('.', 'description.toml'), { encoding: 'utf8' })

await writeFile(
    resolve('.', 'description.json'), 
    JSON.stringify(parse(descriptions), null, 4),
    { encoding: 'utf8' }
)