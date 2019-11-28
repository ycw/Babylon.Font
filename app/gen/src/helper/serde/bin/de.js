import { classOf, sizeOf } from './util.js'



export function deserialize(arrayBuffer) {
    const parser = new Parser(arrayBuffer);
    const result = parser.parse();
    return result;
}



class Parser {
    constructor(arrayBuffer) {
        this.byteOffset = 0;
        this.arrayBuffer = arrayBuffer;
        this.result = {};
        this.nChar = NaN;
    }

    parse() {
        this.parseField('version', this.result);
        this.parseField('ascender', this.result);
        this.parseField('descender', this.result);
        this.parseField('nChar', this);

        this.result['chars'] = [];
        while (this.nChar > 0) {
            const char = {};
            this.result['chars'].push(char);
            --this.nChar;

            const cp = this.parseField('codepoint');
            char['name'] = String.fromCodePoint(cp);

            this.parseField('advanceWidth', char);

            const meta = this.parseField('dataMeta');
            if (meta & 0x1) {
                char['data'] = {};
            } else {
                char['data'] = null;
                continue;
            }

            const szPositions = this.parseField('szPositions');
            const szIndices = this.parseField('szIndices');
            const szUvs = this.parseField('szUvs');
            const szNormals = this.parseField('szNormals');

            const data = char['data'];
            this.parseArrayField('positions', szPositions, data);
            this.parseArrayField('indices', szIndices, data);
            this.parseArrayField('uvs', szUvs, data);
            this.parseArrayField('normals', szNormals, data);
        }

        return this.result;
    }

    parseField(name, object) {
        const ABView = classOf(name);
        const view = new ABView(this.arrayBuffer, this.byteOffset);
        const result = view[0];
        const byteAdvanced = sizeOf(name);
        object && (object[name] = result);
        this.byteOffset += byteAdvanced;
        return result;
    }

    parseArrayField(name, byteLength, object) {
        const queryName = name.concat('Elm');
        const ABView = classOf(queryName);
        const length = byteLength / sizeOf(queryName);
        const view = new ABView(this.arrayBuffer, this.byteOffset, length);
        const result = Array.from(view);
        object && (object[name] = result);
        this.byteOffset += byteLength;
        return result;
    }
}
