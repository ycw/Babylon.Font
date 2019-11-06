(async function () {

    // Install Compiler
    const wasmUrl = '../../dist/compile_wa.wasm';
    const compiler = await Font.InstallCompiler(wasmUrl);

    // Install Font
    const fontUrl = './font/NotoSans-Thin.ttf';
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
    scene.activeCamera.wheelPrecision *= 10;
    scene.activeCamera.panningSensibility *= 10;
    scene.activeCamera.radius = 5;

    // App state
    const state = {
        text: elText.value.trim(),
        ppc: 20,
        eps: 0.02,
        depth: 0.05,
        sz: 0.4,
        font: font,
        store: new Map(),
        host: new BABYLON.TransformNode('')
    };

    initUI(state);
    syncUI(state);
    render(state);
}());



function initUI(state) {

    // text input
    elText.addEventListener('input', e => {
        if (e.target.value !== state.text) {
            state.text = e.target.value;
            render(state);
        }
    });

    // depth input
    elDepth.addEventListener('input', e => {
        const depth = Number.parseFloat(e.target.value);
        if (depth !== state.depth) {
            state.depth = depth;
            clearStore(state.store);
            render(state);
        }
    });

    // ppc input
    elPpc.addEventListener('input', e => {
        const ppc = Number.parseInt(e.target.value);
        if (ppc !== state.ppc) {
            state.ppc = ppc;
            clearStore(state.store);
            render(state);
        }
    });

    // eps input
    elEps.addEventListener('input', e => {
        const eps = Number.parseFloat(e.target.value);
        if (eps !== state.eps) {
            state.eps = eps;
            clearStore(state.store);
            render(state);
        }
    });
}



function syncUI(state) {
    elText.value = state.text;
    elDepth.value = state.depth.toString();
    elPpc.value = state.ppc.toString();
    elEps.value = state.eps.toString();
}



function clearStore(store) {
    for (const [ch, { mesh }] of store.entries()) {
        store.delete(ch);
        mesh && mesh.dispose();
    }
}



function render(state) {
    state.host.dispose();
    state.host = new BABYLON.TransformNode('');
    let x = 0;
    let xMax = 0;
    let line = 0;
    for (const ch of state.text) {
        if (ch == '\n') {
            x = 0;
            line += 1;
            continue;
        }
        // Cache mesh of char
        if (!state.store.has(ch)) {
            const char = state.font.char(ch, 0.2, state.ppc, state.eps);
            const node = char.node({
                depth: state.depth,
                sideOrientation: BABYLON.Mesh.DOUBLESIDE
            });
            const mesh = node.getChildMeshes()[0];
            mesh && mesh.setEnabled(false);
            state.store.set(ch, { mesh, advanceWidth: char.advanceWidth });
        }
        // Create InstancedMesh{} from mesh in cache
        const { mesh, advanceWidth } = state.store.get(ch);
        if (mesh) {
            const inst = mesh.createInstance('');
            inst.parent = state.host;
            inst.position.x = x;
            inst.position.z = -1 * line * state.sz;
        }
        x += advanceWidth;
        xMax = Math.max(xMax, x);
    }
    state.host.rotation.x = -0.5 * Math.PI; // apply rotation  
    state.host.position.x = -0.5 * xMax; // offset x
    state.host.position.z = -0.5 * state.depth; // offset y
    state.host.position.y = 0.5 * line * state.sz; // offset z 
}
