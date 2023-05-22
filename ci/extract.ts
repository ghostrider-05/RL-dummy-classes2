import { resolve } from 'node:path'

import { createProcess, writeChangelog } from './util/process.js';
import { copySrc } from './util/src.js';

await createProcess('AssetExtraction', ['-a', '--steam'], {
    cwd: resolve('.', '../'),
    onError: (d) => console.error(`Error: ${d}`),
    error: { message: 'Failed to extract classes' },
})

console.log('Completed asset extraction')

await writeChangelog(resolve('.', './Src/'))
await copySrc()
