import { type Annotation } from '../annotations.js'
import { parseFile, interpolate, readFile } from '../process.js'
import { type SrcFile } from '../src.js'

export interface ModifiedFile {
    status: 'new' | 'modified' | 'deleted'
    file: string
    src: SrcFile
}

export interface Repo {
    owner: string
    repo: string
    mainBranch?: string
}

export class OctokitDescriptionUtil {
    public prTemplates = {
        newVersion: 'new_version_pull_request',
        update: 'pull_request',
    }

    public kismetAssets: [key: string, name: string][] = [
        ['blender', 'Blender kismet plugin'],
        ['tree', 'Car_TA property tree - legacy'],
        ['compact_tree', 'Car_TA property tree'],
        ['itemdb', 'Items DB'],
        ['classes', 'Psyonix Unreal classes'],
        ['nodes', 'Psyonix kismet nodes - legacy'],
        ['nodes_automated', 'Psyonix kismet nodes'],
        ['history', 'Psyonix kismet nodes'],
    ]

    private createAssetString (version: string) {
        const url = (key: string) => `https://kismet-cdn.ghostrider.workers.dev/assets?version=${version}&tag=${key}`

        return this.kismetAssets.map(([key, name]) => {
            return `- ${name}: [Download](${url(key)}) - [View](${url(key)}&view=1)`
        }).join('\n')
    }

    private async interpolate (templateName: string, options: Record<string, unknown>) {
        const template = await readFile(`./ci/templates/${templateName}.md`)

        return interpolate(template, options)
    }

    private isModifiedFile (file: ModifiedFile | SrcFile): file is ModifiedFile {
        return !Array.isArray(file)
    }

    private toSrc (file: ModifiedFile | SrcFile): SrcFile {
        return this.isModifiedFile(file) ? file.src : file
    }

    private async getOptions (files: ModifiedFile[] | SrcFile[], downloadUrl: string) {
        const toSnakeCase = (input: string) => input.replace(/ /g, '_').toLowerCase()

        const config = await parseFile<{ Version: string }>('./config.json')
        const annotations = await parseFile<Annotation[]>('./out/annotations.json')
            .then(value => value.filter(n => files.some(file => `Src/${this.toSrc(file)[2]}` === n.file)))
    
        return {
            warnings: '+' + annotations.filter(a => a.annotation_level === 'warning').length,
            errors: '+' + annotations.filter(a => a.annotation_level === 'failure').length,
            version: config.Version,
            versionslash: config.Version.replace('.', '-'),
            kismetassets: this.createAssetString(config.Version),
            downloadUrl,
            count: files.length,
            annotations: annotations.length > 0
                ? annotations
                    .map(a => `[${a.annotation_level.toUpperCase()}] ${a.file} (${a.line}): ${a.message}`)
                    .join('\r\n')
                : `No changes in the recompile process found...`,
            classes: files.map(file => {
                const src = this.toSrc(file)
                if (src[0].includes('.') || src[0].includes('/')) return undefined

                const name = src[1].split('.')[0]
                const url = `https://github.com/ghostrider-05/RL-dummy-classes2/tree/main/Src/${src[2]}`
                const changelog = `https://github.com/ghostrider-05/RL-dummy-classes2/blob/main/CHANGELOG.md#${toSnakeCase(name)}`
        
                return `| ${src[0]} | [${name}](${url}) | ${this.isModifiedFile(file) ? file.status : `[view](${changelog})`} |`
            }).filter((c): c is string => c != undefined).join('\r\n')
        }
    }

    public async createPullRequest (
        key: keyof OctokitDescriptionUtil['prTemplates'], 
        files: ModifiedFile[] | SrcFile[], 
        downloadUrl: string
    ) {
        const options = await this.getOptions(files, downloadUrl)

        return this.interpolate(this.prTemplates[key], options)
    }

    public getDownloadLink (repo: Repo, branch: string) {
        return `https://github.com/${repo.owner}/${repo.repo}/archive/refs/heads/${branch}.zip`
    }
}