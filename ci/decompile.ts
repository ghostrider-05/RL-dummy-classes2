import { UnrealFrontendAnnotations } from './util/annotations.js';
import { createProcess } from './util/process.js';

const annotator = new UnrealFrontendAnnotations('C:', 2);

await createProcess(process.env.UDK_CMD!, ['make', '-full'], {
    onMessage: (d) => annotator.log(d),
    onError: (d) => annotator.log(d, {
        logInvalid: true,
        prefix: 'error: ',
    }),
    error: { message: 'Failed to compile classes' }
})
        
console.log(annotator.lastInvalidLines.join('\n'))
await annotator.write()