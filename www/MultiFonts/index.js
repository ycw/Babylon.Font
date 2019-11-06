(async function main() {

    // Install Compiler
    const wasmUrl = '../../dist/compile_wa.wasm';
    const compiler = await Font.InstallCompiler(wasmUrl);

    // Install Fonts
    const font0 = await Font.InstallFont('./font/NotoSerifDisplay-Thin.ttf', compiler);
    const font1 = await Font.InstallFont('./font/Cherry Monospace-Light.ttf', compiler);

    // Create BabylonJS Env
    const canvas = document.querySelector('canvas');
    const engine = new BABYLON.Engine(canvas);
    const scene = new BABYLON.Scene(engine);
    engine.runRenderLoop(() => scene.render());
    addEventListener('resize', () => engine.resize());

    // Setup Scene
    scene.createDefaultCamera(true, true, true);
    scene.createDefaultLight(true);

    // Create Char{}s
    const option = { depth: 0.1, sideOrientation: BABYLON.Mesh.DOUBLESIDE };
    const chars = [
        font0.char('B', 0.5, 10, 0.001), // use font 0
        font1.char('B', 0.5, 10, 0.050), // use font 1
    ];

    // Layout 
    const node = layout(chars, option);

    // Upright
    node.rotation.x = - 0.5 * Math.PI;
})();



function layout(chars, option) {
    const host = new BABYLON.TransformNode('');
    let x = 0;
    let minDescender = 0;
    let maxFontSize = 0;
    for (const char of chars) {
        const node = char.node(option);
        node.position.x = x;
        node.parent = host;
        x += char.advanceWidth;
        minDescender = Math.min(char.descender, minDescender);
        maxFontSize = Math.max(maxFontSize, char.fontSize);
    }
    host.position.x = - 0.5 * x; // center x
    host.position.y = 0.5 * option.depth; // center y
    host.position.z = -0.5 * maxFontSize - minDescender; // center z
    const node = new BABYLON.TransformNode('');
    host.parent = node;
    return node;
}