import { $ } from '../helper/dom.js';
import { save } from '../helper/saver.js';
import { serialize as seBin } from '../helper/serde/bin/se.js';
import { serialize as seJson } from '../helper/serde/json/se.js';
import { deserialize as deBin } from '../helper/serde/bin/de.js';

let scene;
let meshStore;
let getSize;
let getTextContent;
let getMetrics;
let updateCanvasSize;

export function init(o) {
    scene = o.scene;
    meshStore = o.meshStore;
    getSize = o.getSize;
    getTextContent = o.getTextContent;
    getMetrics = o.getMetrics;
    updateCanvasSize = o.updateCanvasSize;

    $('#el_dumpImage').onclick = handleImage;
    $('#el_dumpData').onclick = handleData;
    $('#el_dumpDataBin').onclick = handleDataBin;
}

function handleImage(e) {
    screenshot();
}

function handleData(e) {
    const text = getTextContent();
    const json = seJson(text, meshStore, getMetrics);
    const str = JSON.stringify(json);
    save([str], 'a.json');
}

function handleDataBin(e) {
    const text = getTextContent();
    const arrayBuffer = seBin(text, meshStore, getMetrics);
    save([arrayBuffer], 'a.bin');
}

function screenshot() {
    const engine = scene.getEngine();
    const camera = scene.activeCamera;
    const canvas = engine.getRenderingCanvas();
    const oW = canvas.width;
    const oH = canvas.height;
    const { width, height } = getSize();
    canvas.width = width;
    canvas.height = height;
    engine.resize();
    scene.render();
    BABYLON.Tools.CreateScreenshot(engine, camera, { precision: 1 });
    canvas.width = oW;
    canvas.height = oH;
    updateCanvasSize();
}
