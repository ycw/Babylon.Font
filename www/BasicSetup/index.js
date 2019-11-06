(async function main() {

    // Install Compiler
    const wasmUrl = '../../dist/compile_wa.wasm';
    const compiler = await Font.InstallCompiler(wasmUrl);

    // Install Font
    const fontUrl = './font/NotoSerifDisplay-Thin.ttf';
    const font = await Font.InstallFont(fontUrl, compiler);

    // Create BabylonJS Env
    const canvas = document.querySelector('canvas');
    const engine = new BABYLON.Engine(canvas);
    const scene = new BABYLON.Scene(engine);
    engine.runRenderLoop(() => scene.render());
    addEventListener('resize', () => engine.resize());

    // Setup Scene
    scene.createDefaultCamera(true, true, true);
    scene.createDefaultLight(true);

    // Create Char{}
    // args: (ch, fontSize, pointsPerCurve, dedupEpsilon) 
    const char = font.char('B', 0.5, 5, 0.001);

    // Create node .. A TransformNode{} wrapping a mesh of char 'B'
    // args: (CreatePolygonOpt, scene, isPivotAtOrigin)
    const opt = { depth: 0.1, sideOrientation: BABYLON.Mesh.DOUBLESIDE };
    const node = char.node(opt, scene, true);

    // Upright
    node.rotation.x = - 0.5 * Math.PI;
})();
