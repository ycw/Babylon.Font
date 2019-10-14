const state = {};


(async function () {

    // Compile fn
    state.compile = await compile_wa.init();

    // Font to test
    state.fontUrl = '../font/NotoSerifDisplay-Thin.ttf';

    // Load font data via opentypejs
    state.otFont = await opentypeLoadAsync(state.fontUrl);
    
    // Create Babylon playground to render compiled shapes
    createBabylonEnv();

}());



function createBabylonEnv() {
    const engine = new BABYLON.Engine(elCanvas);
    const scene = createScene(engine);
    engine.runRenderLoop(() => scene.render());
    addEventListener('resize', () => engine.resize());
}



function createScene(engine) {
    const scene = new BABYLON.Scene(engine);

    scene.createDefaultCamera(true, true, true);
    scene.createDefaultLight(true);

    // 
    // API: createText param list
    // {otFont} opentype.Font
    // {text} a multi text 
    // {depth} extrude depth
    // {ppc} pointPerCurve; =smoothness; step is 0 1 2 3 etc..
    // {eps} dedupEpsilon; =decimate; step is 0, 0.001, 0.002 etc..
    //

    const text = 'Babylon.Font\nwebassembly\nimpl. done';
    const depth = 0.1;
    const ppc = 1;
    const eps = 0.001;
    const tn = createText(state.otFont, text, depth, ppc, eps);
    tn.rotation.x = -Math.PI / 2;
    tn.scaling.set(0.3, 0.3, 0.3);

    return scene;
}



//
// Minimal multiline text mesh impl
//

function createText(otFont, text, depth = 0, ppc = 0, eps = 0) {
    const tn = new BABYLON.TransformNode('');
    let z = 0;
    let x = 0;
    let xMax = 0;
    for (const row of text.split('\n')) { // each row
        for (const ch of row) { // each ch
            const otPath = otFont.getPath(ch, 0, 0, 1);
            const otFmt = otFont.outlineFormat;
            const shapes = state.compile(otPath.commands, otFmt, ppc, eps); // compile
            for (const shape of shapes) { // each shape (data is still [x,y] pair)
                const mesh = BABYLON.MeshBuilder.ExtrudePolygon('', {
                    shape: shape.fill.map(vec3), // map to bjs vec3
                    holes: [...shape.holes].map(hole => hole.map(vec3)), //ditto
                    depth,
                    sideOrientation: BABYLON.Mesh.DOUBLESIDE
                });
                mesh.parent = tn;
                mesh.position.set(x, 0, z);
            }
            x += otFont.charToGlyph(ch).advanceWidth / otFont.unitsPerEm;
            xMax = Math.max(xMax, x);
        }
        x = 0;
        z -= 1; // lineheight; push next line downward
    }
    tn.position.x = -1 * xMax / 2;
    const tn2 = new BABYLON.TransformNode('');
    tn.parent = tn2;
    return tn2;
}

function vec3([x, y]) {
    return new BABYLON.Vector3(x, 0, -y);
}

function opentypeLoadAsync(fontUrl) {
    return new Promise((resolve, reject) => {
        opentype.load(fontUrl, (e, font) => {
            if (e) reject(e);
            if (font) resolve(font);
            else reject(e);
        });
    })
}