import { createProcess } from "../process.js"
import { getFileDetails } from "../src.js"

import { type ModifiedFile } from "./description.js"

export class GitUtil {
    public async getCurrentModifiedFiles (extension = '', allowedPaths?: string[]) {
        const messages: ModifiedFile[] = []

        await createProcess('git', ['status', '--porcelain'], {
            onMessage: (msg) => messages.push(
                ...msg
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
            ),
        })

        return messages
    }
}