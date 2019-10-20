main();



async function main() {

    // Make compile fn
    const wasmUrl = '../src_wasm/build/untouched.wasm';
    const compile = await compile_wa.init(wasmUrl);

    // Load font data via opentypejs
    const fontUrl = './font/NotoSerifDisplay-Thin.ttf';
    const font = await opentypeLoadAsync(fontUrl);

    // Create Babylon playground to render compiled shapes
    createBabylonEnv({ compile, font });
}



function createBabylonEnv(state) {
    const engine = new BABYLON.Engine(elCanvas);
    const scene = createScene(engine, state);
    engine.runRenderLoop(() => scene.render());
    addEventListener('resize', () => engine.resize());
}



function createScene(engine, state) {
    const scene = new BABYLON.Scene(engine);
    scene.createDefaultCamera(true, true, true);
    scene.createDefaultLight(true);

    const text = 'hello\nworld!';
    const depth = 0.1;
    const ppc = 5;      // point per curve
    const eps = 0.001;  // dedup epsilon
    const tn = createText(text, depth, ppc, eps, state);
    tn.rotation.x = -Math.PI / 2;
    tn.scaling.set(0.2, 0.2, 0.2);

    return scene;
}



//
// Minimal multiline text mesh impl.
//

function createText(text, depth, ppc, eps, { compile, font }) {
    const tn = new BABYLON.TransformNode('');
    let z = 0;
    let x = 0;
    let xMax = 0;
    for (const row of text.split('\n')) { // each row
        for (const ch of row) { // each ch

            //
            // Compile opentype.PathCommand
            //

            const otPath = font.getPath(ch, 0, 0, 1);
            const otFmt = font.outlineFormat;
            const shapes = compile(otPath.commands, otFmt, ppc, eps);

            //
            // Consume shapes
            //

            for (const shape of shapes) { // each shape
                const mesh = BABYLON.MeshBuilder.ExtrudePolygon('', {
                    shape: shape.fill.map(vec3), // map to bjs vec3
                    holes: shape.holes.map(hole => hole.map(vec3)), // ditto
                    depth,
                    sideOrientation: BABYLON.Mesh.DOUBLESIDE
                });
                mesh.parent = tn;
                mesh.position.set(x, 0, z);
            }

            //
            // Advance next char 
            //

            x += font.charToGlyph(ch).advanceWidth / font.unitsPerEm;
            xMax = Math.max(xMax, x);
        }
        x = 0;
        z -= 1.25; // line height
    }
    tn.position.x = - xMax / 2;
    const tn2 = new BABYLON.TransformNode('');
    tn.parent = tn2;
    return tn2;
}



//
// Map bytes from linear memroy to library-dependent struct
//

function vec3([x, y]) {
    return new BABYLON.Vector3(x, 0, -y);
}



//
// "Promisify" opentype.load
//

function opentypeLoadAsync(fontUrl) {
    return new Promise((resolve, reject) => {
        opentype.load(fontUrl, (e, font) => {
            if (e) reject(e);
            else resolve(font);
        });
    });
}
