import { $ } from '../helper/dom.js';
import { hex2rgb, rgb2hex } from '../helper/color.js';

let bias;
let normalBias;
let color;
let isGrounded;
let shadowGenerator;
let groundMesh;

export function init(o) {
    bias = o.bias;
    normalBias = o.normalBias;
    color = o.color;
    isGrounded = o.isGrounded;
    shadowGenerator = o.shadowGenerator;
    groundMesh = o.groundMesh;

    $('#el_shadowBias').oninput = handleBias;
    $('#el_shadowNormalBias').oninput = handleNormalBias;
    $('#el_shadowColor').oninput = handleColor;
    $('#el_shadowIsGrounded').oninput = handleIsGrounded;

    $('#el_shadowBias').value = bias;
    $('#el_shadowNormalBias').value = normalBias;
    $('#el_shadowColor').value = rgb2hex(color);
    $('#el_shadowIsGrounded').value = Number(isGrounded);

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

function handleIsGrounded(e) {
    isGrounded = Boolean(parseInt(e.target.value, 10));
    update();
}

function update() {
    groundMesh.setEnabled(isGrounded);
    groundMesh.material.shadowColor.set(...color);
    shadowGenerator.bias = bias;
    shadowGenerator.normalBias = normalBias;
}
