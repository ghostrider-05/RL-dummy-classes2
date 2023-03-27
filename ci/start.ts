import { resolve } from 'node:path'

import { UnrealFrontendAnnotations } from './util/annotations.js';
import { copySrc, createProcess, writeChangelog } from './util/process.js';

const annotator = new UnrealFrontendAnnotations('C:', 2);

const extractorCode = await createProcess('AssetExtraction', ['-a', '--steam'], {
    cwd: resolve('.', '../'),
    onError: (d) => console.error(`Error: ${d}`),
})

if (extractorCode !== 0) throw new Error('Failed to extract classes')
console.log('Completed asset extraction')

await writeChangelog(resolve('.', './Src/'))
await copySrc()

const code = await createProcess(process.env.UDK_CMD!, ['make', '-full'], {
    onMessage: (d) => annotator.log(d),
    onError: (d) => annotator.log(d, {
        logInvalid: true,
        prefix: 'error: ',
    }),
})

if (code !== 0) throw new Error('Failed to compile classes')
        
console.log(annotator.lastInvalidLines.join('\n'))
annotator.write()
