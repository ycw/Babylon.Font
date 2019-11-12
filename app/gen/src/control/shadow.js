import { $ } from '../helper/dom.js';
import { hex2rgb, rgb2hex } from '../helper/color.js';

let bias;
let normalBias;
let color;
let isEnabled;
let shadowGenerator;
let groundMesh;
let scene;

export function init(o) {
    bias = o.bias;
    normalBias = o.normalBias;
    color = o.color;
    isEnabled = o.isEnabled;
    shadowGenerator = o.shadowGenerator;
    groundMesh = o.groundMesh;
    scene = o.scene;

    $('#el_shadowBias').oninput = handleBias;
    $('#el_shadowNormalBias').oninput = handleNormalBias;
    $('#el_shadowColor').oninput = handleColor;
    $('#el_shadowIsEnabled').oninput = handleIsEnabled;

    $('#el_shadowBias').value = bias;
    $('#el_shadowNormalBias').value = normalBias;
    $('#el_shadowColor').value = rgb2hex(color);
    $('#el_shadowIsEnabled').value = Number(isEnabled);

    update();
}

function handleBias(e) {
    bias = parseFloat(e.target.value);
    update();
}

function handleNormalBias(e) {
    normalBias = parseFloat(e.target.value);
    update();
}

function handleColor(e) {
    color = hex2rgb(e.target.value);
    update();
}

function handleIsEnabled(e) {
    isEnabled = Boolean(parseInt(e.target.value, 10));
    update();
}

function update() {
    groundMesh.setEnabled(isEnabled);
    scene.shadowsEnabled = isEnabled;
    groundMesh.material.shadowColor.set(...color);
    shadowGenerator.bias = bias;
    shadowGenerator.normalBias = normalBias;
}
