import { writeFile } from 'node:fs/promises';
import { resolve } from 'node:path';

type AnnotationLevel = 'warning' | 'notice' | 'failure'

export class UnrealFrontendAnnotations {
    public annotations: {
        file: string,
        line: number,
        message: string,
        title: string,
        annotation_level: AnnotationLevel
    }[] = []

    public lastInvalidLines: string[]

    public constructor(
        public drive: string,
        public readonly invalidCount: number
    ) { 
        this.lastInvalidLines = Array.from({ length: invalidCount })
    }

    private addInvalidLine (line: string): void {
        if (this.invalidCount < 1) return;

        for (let i = this.invalidCount - 1; i >= 0; i--) {
            if (i > 0) this.lastInvalidLines[i] = this.lastInvalidLines[i - 1]
            else this.lastInvalidLines[0] = line
        }
    }

    private toAnnotation (type: string): AnnotationLevel | null {
        const levels: Record<string, AnnotationLevel> = {
            'warning': 'warning',
            'error': 'failure'
        }

        return levels[type.toLowerCase()] ?? null
    }

    public log (line: string, options?: { logInvalid?: boolean; prefix?: string }): void {
        if (!line.startsWith(this.drive)) {
            if (options?.logInvalid) console.log(`${options.prefix ?? ''}${line}`)
            return this.addInvalidLine(line);
        }

        const [, file] = line.split(':', 2)
        const msg = line.slice(file.length + this.drive.length + ': '.length)

        const [pathPart, msgLine] = file.split('Development\\Src\\', 2)[1].split('.uc')
        const [type, message] = msg.trim().split(', ', 2)
        const annotation_level = this.toAnnotation(type);

        if (annotation_level) this.annotations.push({
            annotation_level,
            line: Number(msgLine.trim().slice(1, -1)),
            title: `Decompile ${annotation_level !== 'warning' ? 'error' : 'warning'}`,
            message,
            file: ['./Src', ...pathPart.split('\\')].join('/') + '.uc'
        })
    }

    public async write (): Promise<void> {
        await writeFile(resolve('.', './ci/annotations.json'), JSON.stringify(this.annotations))
    }
}