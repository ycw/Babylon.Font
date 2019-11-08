(async function main() {

    // Install Compiler
    const compiler = await Font.InstallCompiler('../../dist/compile_wa.wasm');

    // Install Font
    const font = await Font.InstallFont('./font/NotoSerifDisplay-Regular.ttf', compiler);

    // Create BabylonJS Env
    const canvas = document.querySelector('canvas');
    const engine = new BABYLON.Engine(canvas, true, {
        preserveDrawingBuffer: true, stencil: true
    }, true);
    const scene = new BABYLON.Scene(engine);
    engine.runRenderLoop(() => scene.render());

    // App State
    const state = {
        scene,
        compiler,
        meshStore: new Map(),
        
        light: {
            angle: 45,
            distance: 100,
            height: 1,
            intensity: 1,
        },

        shadow: {
            toggleGround: 1,
            bias: 0.000001,
            normalBias: 0.00005,
            color: [0.1, 0.3, 0.8]
        },

        background: {
            color: [0.25, 0.5, 1],
            alpha: 1
        },

        font: {
            size: 1,
            ppc: 10,
            eps: 0.005,
            depth: 0.1,
            object: font,
            color: [1, 0.25, 0.25]
        },

        rendering: {
            width: 1920,
            height: 1080,
            aaSamples: 1,
        },

        text: 'Babylon.Font',
    };

    initScene(state);
    initUI(state);
})();



// Helper: query element
function $(sel, ctx) {
    return (ctx || document).querySelector(sel);
}

// Helper: '#RRGGBB' to [r,g,b]
function hex2rgb(s) {
    const r = parseInt(s.substring(1, 3), 16) / 255;
    const g = parseInt(s.substring(3, 5), 16) / 255;
    const b = parseInt(s.substring(5, 7), 16) / 255;
    return [r, g, b];
}

// Helper: [r,g,b] to '#RRGGBB'
function rgb2hex([r, g, b]) {
    const R = (r * 255 | 0).toString(16).padStart(2, '0');
    const G = (g * 255 | 0).toString(16).padStart(2, '0');
    const B = (b * 255 | 0).toString(16).padStart(2, '0');
    return `#${R}${G}${B}`;
}

// Helper: install font from file
async function loadFont(file, compiler) {
    const url = URL.createObjectURL(file);
    try {
        const font = await Font.InstallFont(url, compiler);
        loadFont.url && URL.revokeObjectURL(loadFont.url);
        loadFont.url = url;
        return font;
    } catch (e) {
        alert('Failed to install font');
        console.error(e);
        return null;
    }
}



function updateLight(scene, light) {
    const { angle, distance, height, intensity } = light;
    const light0 = scene.getLightByName('light0');
    const rad = angle * Math.PI / 180;
    light0.position.x = Math.sin(rad) * distance;
    light0.position.z = Math.cos(rad) * distance;
    light0.position.y = height;
    light0.intensity = intensity;
    light0.setDirectionToTarget(BABYLON.Vector3.Zero());
}



function updateShadow(scene, shadow) {
    const { bias, normalBias, toggleGround, color } = shadow;
    const ground = scene.getMeshByName('ground');
    ground.setEnabled(toggleGround);
    ground.material.shadowColor.set(...color);
    const { shadowGenerator } = scene.metadata;
    shadowGenerator.bias = bias;
    shadowGenerator.normalBias = normalBias;
}



function updateBackground(scene, background) {
    const { color, alpha } = background;
    scene.clearColor.set(...color, alpha);
}



function updateFontColor(font) {
    font.material.diffuseColor.set(...font.color);
}



function updateCanvasSize(scene, rendering) {
    const canvas = scene.getEngine().getRenderingCanvas();
    const container = canvas.parentNode;
    const { width: cW, height: cH } = container.getBoundingClientRect();
    const w = rendering.width;
    const h = rendering.height;
    if (w > h) { // canvas ratio: landscape
        canvas.width = cW;
        canvas.height = h * (cW / w);
        if (canvas.height > cH) {
            canvas.width = w * (cH / h);
            canvas.height = cH;
        }
    } else { // canvas ratio: portrait
        canvas.height = cH;
        canvas.width = w * (cH / h);
        if (canvas.width > cW) {
            canvas.height = h * (cW / w);
            canvas.width = cW;
        }
    }
    scene.getEngine().resize();
}



function updateAA(rendering) {
    rendering.pipeline.samples = rendering.aaSamples;
}



function screenshot(scene, rendering) {
    const engine = scene.getEngine();
    const camera = scene.activeCamera;
    const canvas = engine.getRenderingCanvas();
    const oWidth = canvas.width;
    const oHeight = canvas.height;
    canvas.width = rendering.width;
    canvas.height = rendering.height;
    engine.resize();
    scene.render();
    BABYLON.Tools.CreateScreenshot(engine, camera, { precision: 1 });
    canvas.width = oWidth;
    canvas.height = oHeight;
    updateCanvasSize(scene, rendering);
}



function serialize(text, meshStore) {
    if (text.length === 0) {
        return;
    }
    const result = {};
    result.chars = [];
    const names = new Set([...text]);
    for (const name of names) {
        const { mesh, char } = meshStore.get(name);
        const data = mesh.geometry.serializeVerticeData();
        const { advanceWidth } = char;
        result.chars.push({ name, data, advanceWidth });
    }

    const { char } = meshStore.get(text[0]);
    result.ascender = char.ascender;
    result.descender = char.descender;

    // Dump JSON
    // https://doc.babylonjs.com/resources/save_babylon
    const str = JSON.stringify(result);
    const blob = new Blob([str], { type: 'octet/stream' });
    serialize.url && URL.revokeObjectURL(serialize.url);
    serialize.url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = serialize.url;
    a.download = 'a.json';
    const ev = document.createEvent('MouseEvents');
    ev.initEvent('click', true, false);
    a.dispatchEvent(ev);
}



function initUI(state) {

    // Text Related

    $('#el_text').oninput = e => {
        state.text = e.target.value;
        renderText(state.text, state.font, state.meshStore, state.scene);
    };

    // Light Related

    $('#el_lightAngle').oninput = e => {
        state.light.angle = +e.target.value;
        updateLight(state.light);
    }
    $('#el_lightDistance').oninput = e => {
        state.light.distance = +e.target.value;
        updateLight(state.scene, state.light);
    };
    $('#el_lightHeight').oninput = e => {
        state.light.height = +e.target.value;
        updateLight(state.scene, state.light);
    };
    $('#el_lightIntensity').oninput = e => {
        state.light.intensity = +e.target.value;
        updateLight(state.scene, state.light);
    };

    // Shadow Related

    $('#el_shadowToggleGround').oninput = e => {
        state.shadow.toggleGround = +e.target.value;
        updateShadow(state.scene, state.shadow);
    };
    $('#el_shadowBias').oninput = e => {
        state.shadow.bias = +e.target.value;
        updateShadow(state.scene, state.shadow);
    };
    $('#el_shadowNormalBias').oninput = e => {
        state.shadow.normalBias = +e.target.value;
        updateShadow(state.scene, state.shadow);
    };
    $('#el_shadowColor').oninput = e => {
        state.shadow.color = hex2rgb(e.target.value);
        updateShadow(state.scene, state.shadow);
    };

    // Background Related
    
    $('#el_bgColor').oninput = e => {
        state.background.color = hex2rgb(e.target.value);
        updateBackground(state.scene, state.background);
    };
    $('#el_bgAlpha').oninput = e => {
        state.background.alpha = +e.target.value;
        updateBackground(state.scene, state.background);
    };

    // Foreground Related

    $('#el_fg').oninput = e => {
        state.font.color = hex2rgb(e.target.value);
        updateFontColor(state.font);
    };

    // Font Related

    $('#el_ppc').oninput = e => {
        state.font.ppc = +e.target.value;
        state.meshStore.clear();
        renderText(state.text, state.font, state.meshStore, state.scene);
    };
    $('#el_eps').oninput = e => {
        state.font.eps = +e.target.value;
        state.meshStore.clear();
        renderText(state.text, state.font, state.meshStore, state.scene);
    };
    $('#el_depth').oninput = e => {
        state.font.depth = +e.target.value;
        state.meshStore.clear();
        renderText(state.text, state.font, state.meshStore, state.scene);
    }

    // Font Related: Drop .ttf/.otf 

    $('body').ondragover = e => {
        e.preventDefault();
    };
    $('body').ondrop = async (e) => {
        e.preventDefault();
        for (const item of e.dataTransfer.items) {
            if (item.kind == 'file') {
                const file = item.getAsFile();
                const font = await loadFont(file, state.compiler);
                if (font) {
                    state.font.object = font;
                    state.meshStore.clear();
                    render(state);
                }
                break;
            }
        }
    };

    // Rendering Related

    $('#el_renderingWidth').oninput = e => {
        state.rendering.width = parseInt(e.target.value, 10);
        updateCanvasSize(state.scene, state.rendering);
    };
    $('#el_renderingHeight').oninput = e => {
        state.rendering.height = parseInt(e.target.value, 10);
        updateCanvasSize(state.scene, state.rendering);
    };    
    $('#el_renderingAASamples').oninput = e => {
        state.rendering.aaSamples = +e.target.value;
        updateAA(state.rendering);
    };
    addEventListener('resize', () => {
        updateCanvasSize(state.scene, state.rendering);
    });

    // Dump Related (datafile/image)

    $('#el_screenshot').onclick = () => {
        screenshot(state.scene, state.rendering);
    };
    $('#el_serialize').onclick = () => {
        serialize(state.text, state.meshStore);
    };

    // Sync "Data<=>View"

    updateLight(state.scene, state.light);
    updateShadow(state.scene, state.shadow);
    updateBackground(state.scene, state.background);
    updateFontColor(state.font);
    updateCanvasSize(state.scene, state.rendering);
    updateAA(state.rendering);

    $('#el_text').value = state.text;
    $('#el_lightAngle').value = state.light.angle.toString();
    $('#el_lightDistance').value = state.light.distance.toString();
    $('#el_lightHeight').value = state.light.height.toString();
    $('#el_lightIntensity').value = state.light.intensity.toString();
    $('#el_shadowToggleGround').value = state.shadow.toggleGround.toString();
    $('#el_shadowBias').value = state.shadow.bias.toString();
    $('#el_shadowNormalBias').value = state.shadow.normalBias.toString();
    $('#el_shadowColor').value = rgb2hex(state.shadow.color);
    $('#el_bgColor').value = rgb2hex(state.background.color);
    $('#el_bgAlpha').value = state.background.alpha.toString();
    $('#el_fg').value = rgb2hex(state.font.color);
    $('#el_ppc').value = state.font.ppc.toString();
    $('#el_eps').value = state.font.eps.toString();
    $('#el_depth').value = state.font.depth.toString();
    $('#el_renderingWidth').value = state.rendering.width.toString();
    $('#el_renderingHeight').value = state.rendering.height.toString();
    $('#el_renderingAASamples').value = state.rendering.aaSamples.toString();

    renderText(state.text, state.font, state.meshStore, state.scene);
}



function initScene(state) {
    const { scene } = state;
    scene.metadata = {};

    // Setup Camera

    const cam = new BABYLON.ArcRotateCamera('',
        BABYLON.Tools.ToRadians(-90), BABYLON.Tools.ToRadians(0),
        500, new BABYLON.Vector3(), scene
    );
    cam.attachControl(scene.getEngine().getRenderingCanvas());
    cam.wheelPrecision = 10;
    cam.panningSensibility *= 5;
    cam.upperBetaLimit = Math.PI / 2;
    cam.fov = Math.PI / 180;

    // Create Ground mesh

    const ground = BABYLON.MeshBuilder.CreateGround('ground', {
        width: 1e4, height: 1e4, subdivisions: 100
    });
    ground.material = new BABYLON.ShadowOnlyMaterial('ground', scene);
    ground.receiveShadows = true;

    // Create Shadow Light 

    const light0 = new BABYLON.DirectionalLight('light0', BABYLON.Vector3.Zero(), scene);

    // Create Shadow Generator

    const shadowGenerator = new BABYLON.ShadowGenerator(2048, light0, true);
    shadowGenerator.filteringQuality = BABYLON.ShadowGenerator.QUALITY_HIGH;
    scene.metadata.shadowGenerator = shadowGenerator;

    // Create Ambient Light

    const light1 = new BABYLON.DirectionalLight('',
        new BABYLON.Vector3(0, -1, 0), scene
    );

    // Create Font Material

    const fontMat = new BABYLON.StandardMaterial('');
    fontMat.specularColor.set(0, 0, 0);
    state.font.material = fontMat;

    // Create Rendering Pipeline

    const rp = new BABYLON.DefaultRenderingPipeline();
    state.rendering.pipeline = rp;
}



function renderText(text, font, meshStore, scene) {
    const { shadowGenerator, hostNode } = scene.metadata;

    hostNode && hostNode.dispose();

    const nuHost = new BABYLON.TransformNode('');
    let x = 0;
    let xMax = 0;
    let line = 0;
    let ascender = 0;
    for (const ch of text) {
        if (ch == '\n') {
            x = 0;
            line += 1;
            continue;
        }
        if (!meshStore.has(ch)) {
            const char = font.object.char(ch, font.size, font.ppc, font.eps);
            const node = char.node({
                depth: font.depth,
                sideOrientation: BABYLON.Mesh.DOUBLESIDE
            });
            const mesh = node.getChildMeshes(true)[0];
            if (mesh) {
                mesh.setEnabled(false);
                mesh.receiveShadows = true;
                mesh.material = font.material;
            }
            meshStore.set(ch, { mesh, char });
        }

        const { mesh, char } = meshStore.get(ch);
        if (mesh) {
            const inst = mesh.createInstance('');
            inst.position.x = x;
            inst.position.z = -1.15 * line * font.size;
            inst.parent = nuHost;
            shadowGenerator.addShadowCaster(inst, false);
        }
        x += char.advanceWidth;
        xMax = Math.max(xMax, x);
        ascender = char.ascender;
    }
    nuHost.position.x = -0.5 * xMax;
    nuHost.position.z = 0.5 * (line * font.size - ascender);
    scene.metadata.hostNode = nuHost;

    const ground = scene.getMeshByName('ground');
    ground.position.y = -font.depth;
}