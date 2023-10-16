import { existsSync } from 'node:fs';
import { readFile, writeFile } from 'node:fs/promises';
import { resolve } from 'node:path';

type AnnotationLevel = 'warning' | 'notice' | 'failure'

export interface Annotation {
    file: string
    line: number
    message: string
    title: string
    annotation_level: AnnotationLevel
}

export class UnrealFrontendAnnotations {
    private _annotations: Annotation[] = []
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

        this._annotations.push(annotation)
        if (this.annotations.some(filter)) {
            return;
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
        const file = ['Src', ...pathPart.split('\\')].join('/') + '.uc'

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
        await writeFile(resolve('.', './out/annotations.json'), JSON.stringify(this.annotations))
        await writeFile(resolve('.', './out/recompile.json'), JSON.stringify(this.getCounts()))
        this.writeUsage()
    }

    public getCounts (): Record<'warnings' | 'errors', number> {
        const line = this.lastInvalidLines.at(-1)

        const warnings = line?.match(/\d+(?= warning\(s\))/)?.[0]
        const errors = line?.match(/\d+(?= error\(s\))/)?.[0]
        if (!warnings || !errors) throw new Error('Invalid counts input ' + this.lastInvalidLines.join(''))

        return {
            warnings: parseInt(warnings),
            errors: parseInt(errors),
        }
    }

    public getUsage (): Record<string, Annotation[]> {
        const messages: Record<string, Annotation[]> = {
            'Missing opening parenthesis': [],
            'Invalid property value in defaults': [],
            'unresolved reference to': [],
            'Unknown property in defaults': [],
            'Unknown member': [],
            unknown: [],
        }

        for (const annotation of this._annotations) {
            const key = Object
                .keys(messages)
                .find(key => annotation.message.includes(key))

            if (key) {
                messages[key].push(annotation)
            } else {
                messages['unknown'].push(annotation)
            }
        }

        return messages
    }

    public async commentUsage (keys: string[]) {
        await new UnrealFrontendPatcher(this.getUsage(), keys)
            .fix()
    }

    public writeUsage (logAnnotations?: boolean): void {
        const dash = '-'.repeat(42)
        const usage = this.getUsage()

        for (const key of Object.keys(usage)) {
            console.log(key + ': ' + usage[key].length)
            if (logAnnotations) {
                console.log(dash)

                for (const msg of usage[key]) {
                    console.log(msg.message)
                }
    
                console.log(dash)
            }
        }       
    }
}

class UnrealFrontendPatcher {
    public constructor (
        private usage: Record<string, Annotation[]>,
        private fixableKeys: string[],
    ) {}

    public async fix () {
        for (const key of this.fixableKeys) {
            const annotations = this.usage[key]
            if (!annotations) continue;
            console.log(`Commenting ${annotations.length} annotations for: ${key}`)

            for (const annotation of annotations) {
                const content = await readFile(resolve('.', annotation.file), { encoding: 'utf8' });
                const lines = content.split('\r\n'), index = annotation.line - 1

                if (lines[index].startsWith('\t')) {
                    lines[index] = lines[index].replace('\t', '\t//')
                } else {
                    lines[index] = '//' + lines[index]
                }

                await writeFile(resolve('.', annotation.file), lines.join('\r\n'))
            }
        }
    }
}