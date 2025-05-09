import {
    interpolate,
    parseFile,
    readFile,
    writeFile,
} from './util/process.js'

const config = await parseFile<{ Version: string }>('./config.json')
const output = await parseFile<Record<'errors' | 'warnings', number>>('./out/recompile.json')

const md = await readFile('./ci/templates/readme.md')

const content = interpolate(md, {
    version: config.Version,
    versionslash: config.Version.replace('.', '-'),
    ...output,
})

await writeFile('./README.md', content)
console.log('Synced readme with output from recompiling')
process.exit(output.errors === 0 ? 0 : 1)
