import * as opentype from 'opentype.js'
import * as BABYLON from 'babylonjs'
import { init, ICompileFn, IPathCommand } from './compile_wa'

type VertexXZ = BABYLON.Vector3
type PolygonXZ = Array<VertexXZ>
type ShapeXZ = {
    fill: PolygonXZ,
    holes: Array<PolygonXZ>
};



export async function InstallCompiler(wasmUrl: string) {
    const compileFn = await init(wasmUrl);
    return new Compiler(compileFn);
}



export async function InstallFont(fontUrl: string, compiler: Compiler) {
    const otFont = await opentypeLoadAsync(fontUrl);
    return new Font(otFont, compiler);
}



function opentypeLoadAsync(fontUrl: string): Promise<opentype.Font> {
    return new Promise((resolve, reject) => {
        opentype.load(fontUrl, (err, otFont) => {
            if (err) reject(err);
            else resolve(otFont);
        });
    });
}





type PolygonMeshOption = {
    backUVs?: BABYLON.Vector4,
    depth?: number,
    faceColors?: BABYLON.Color4[],
    faceUV?: BABYLON.Vector4[],
    frontUVs: BABYLON.Vector4,
    // holes?: BABYLON.Vector3[][],
    // shape: BABYLON.Vector3[],
    sideOrientation?: number
    updatable?: boolean
}

class Font {

    constructor(
        private otFont: opentype.Font,
        private compiler: Compiler
    ) {

    }



    compile(
        ch: string,
        ppc: number,
        eps: number,
        fontSize: number
    ): Array<ShapeXZ> {
        const otPath = this.otFont.getPath(ch, 0, 0, fontSize);
        const shapes = this.compiler.compile(
            otPath.commands,
            this.otFont.outlinesFormat,
            ppc,
            eps * fontSize
        );
        const vec3 = ([x, y]) => new BABYLON.Vector3(x, 0, -y);
        const shapesXZ: Array<ShapeXZ> = [];
        for (const { fill, holes } of shapes) {
            const shapeXZ = {
                fill: fill.map(vec3),
                holes: holes.map(hole => hole.map(vec3))
            };
            shapesXZ.push(shapeXZ);
        }
        return shapesXZ;
    }



    //
    // Get data of single character
    //

    char(
        name: string,
        fontSize: number,
        ppc: number,
        eps: number
    ): Char {
        const shapes = this.compile(name, ppc, eps, fontSize);
        return new Char(name, fontSize, shapes, this.otFont);
    }
}



//
// Compiler
//

class Compiler {
    constructor(private compileFn: ICompileFn) {
    }
    compile(cmds: IPathCommand[], fmt: string, ppc: number, eps: number) {
        return this.compileFn(cmds, fmt, ppc, eps);
    }
}



//
// Char (all props are calc on demand)
//

class Char {

    constructor(
        // Char name
        public name: string,
        // Font size in opentypejs space
        public fontSize: number,
        // Shapes already mapped to BABYLON.Vector3
        private shapes: ShapeXZ[],
        // Raw opentypejs Font
        private otFont: opentype.Font
    ) { }

    //
    // Advanced width of glyph (included left/right bearings)
    //

    get advanceWidth(): number {
        return this.otFont.getAdvanceWidth(this.name, this.fontSize);
    }

    //
    // Font ascender. proportional to fontSize 
    //

    get ascender(): number {
        return this.otFont.ascender / this.otFont.unitsPerEm * this.fontSize;
    }

    //
    // Font descender, negative value; proportional to fontSize
    //

    get descender(): number {
        return this.otFont.descender / this.otFont.unitsPerEm * this.fontSize;
    }

    //
    // CJK info
    //

    get sTypoAscender(): number {
        return this.otFont.tables.os2.oTypoAscender / this.otFont.unitsPerEm
            * this.fontSize;
    }

    //
    // CJK info 
    //

    get sTypoDescender(): number {
        return this.otFont.tables.os2.oTypoDescender / this.otFont.unitsPerEm
            * this.fontSize;
    }

    //
    // Create a merged Mesh for single character; Not centered
    //

    node(
        option?: PolygonMeshOption,
        scene?: BABYLON.Scene,
        isCenter = false
    ): BABYLON.TransformNode {
        const node = new BABYLON.TransformNode('', scene);
        const meshes: BABYLON.Mesh[] = [];
        let mesh: BABYLON.Mesh;
        for (const { fill, holes } of this.shapes) {
            const mesh = BABYLON.MeshBuilder.CreatePolygon('', {
                ...option,
                shape: fill,
                holes: holes,
            }, scene);
            meshes.push(mesh);
        }
        if (meshes.length) {
            mesh = BABYLON.Mesh.MergeMeshes(meshes, true);
            mesh.parent = node;
            if (isCenter) {
                const bbox = mesh.getBoundingInfo().boundingBox;
                node.position.copyFrom(bbox.center.scale(-1));
                const node2 = new BABYLON.TransformNode('', scene);
                node.parent = node2;
                return node2;
            }
        }
        return node;
    }

}
