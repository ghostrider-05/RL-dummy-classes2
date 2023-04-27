import { existsSync } from 'node:fs';
import { writeFile } from 'node:fs/promises';
import { resolve } from 'node:path';

type AnnotationLevel = 'warning' | 'notice' | 'failure'

interface Annotation {
    file: string
    line: number
    message: string
    title: string
    annotation_level: AnnotationLevel
}

export class UnrealFrontendAnnotations {
    public annotations: Annotation[] = []

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

    private addAnnotation (annotation: Annotation): void {
        const filter = (a: Annotation) => {
            return a.file === annotation.file 
                && a.line === annotation.line 
                && a.annotation_level === annotation.annotation_level
        }

        if (this.annotations.some(filter)) {
            this.annotations.find(filter)!.message += '\n' + annotation.message;
        } else {
            this.annotations.push(annotation)
        }
    }

    private levels: Record<string, AnnotationLevel> = {
        'warning': 'warning',
        'error': 'failure'
    }

    private getTitle (level: AnnotationLevel): string {
        const msg = Object
            .entries(this.levels)
            .find(([, lvl]) => lvl === level)?.[0]
            ?? level

        return `Decompile ${msg}`
    }

    public log (line: string, options?: { logInvalid?: boolean; prefix?: string }): void {
        if (!line.startsWith(this.drive)) {
            if (options?.logInvalid) console.log(`${options.prefix ?? ''}${line}`)
            return this.addInvalidLine(line);
        }

        const [, filePart] = line.split(':', 2)
        const msg = line.slice(filePart.length + this.drive.length + ': '.length)

        const [pathPart, msgLine] = filePart.split('Development\\Src\\', 2)[1].split('.uc')
        const [type, message] = msg.trim().split(', ', 2)
        const annotation_level = this.levels[type.toLowerCase()] ?? null;
        const file = ['./Src', ...pathPart.split('\\')].join('/') + '.uc'

        if (!existsSync(resolve('.', file))) {
            return console.log(`New annotation on missing file ${file}: ${message}` )
        }

        if (annotation_level) this.addAnnotation({
            annotation_level,
            line: Number(msgLine.trim().slice(1, -1)),
            title: this.getTitle(annotation_level),
            message,
            file,
        })
    }

    public async write (): Promise<void> {
        console.log(`Writing ${this.annotations.length} annotations`)
        await writeFile(resolve('.', './annotations.json'), JSON.stringify(this.annotations))
    }
}