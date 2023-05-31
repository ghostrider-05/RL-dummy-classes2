import { writeFile } from 'node:fs/promises'

import { LocalClassesInstallation } from '@kismet.ts/parsers-node'

const local = new LocalClassesInstallation(process.env.UDK_SRC_DUMMY, { 
    path: process.env.EXTRACTED_SRC, 
    packageNames: ['Engine', 'Core', 'GFxUI'],
    includeDiff: true,
})

const diff = local.compare(process.env.UDK_SRC)
const content = LocalClassesInstallation.createChangelog(diff)

await writeFile('./out/ENGINE_CHANGELOG.md', content)