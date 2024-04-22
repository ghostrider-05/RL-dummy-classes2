import { createProcess } from "../process.js"
import { getFileDetails } from "../src.js"

import { type ModifiedFile } from "./description.js"

export class GitUtil {
    public async getCurrentModifiedFiles (extension = '', allowedPaths?: string[]) {
        let content: string = ''

        await createProcess('git', ['status', '--porcelain'], {
            onMessage: (msg) => content += msg,
        })

        return content
            .split('\n')
            .filter(l => {
                return (allowedPaths?.some(p => l.includes(p)) ?? false)
                    || l.endsWith(extension)
            })
            .map(f => { 
                const file = f.trimStart().split(' ')[1]
                return {
                    file, 
                    status: f.startsWith('??') 
                        ? 'new' 
                        : f.trimStart().startsWith('D') 
                            ? 'deleted' 
                            : 'updated',
                    src: getFileDetails(file),
                } as ModifiedFile
            })
    }
}