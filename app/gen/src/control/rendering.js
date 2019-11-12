import { $ } from '../helper/dom.js';

export let width;
export let height;
export let samples;
let onSize;
let onSamples;

export function init(o) {
    width = o.width;
    height = o.height;
    samples = o.samples;
    onSize = o.onSize;
    onSamples = o.onSamples;

    $('#el_renderingWidth').oninput = handleWidth;
    $('#el_renderingHeight').oninput = handleHeight;
    $('#el_renderingSamples').oninput = handleSamples;
    
    $('#el_renderingWidth').value = width;
    $('#el_renderingHeight').value = height;
    $('#el_renderingSamples').value = samples;

    update();
}

function handleWidth(e) {
    width = parseInt(e.target.value);
    onSize(width, height);
}

function handleHeight(e) {
    height = parseInt(e.target.value);
    onSize(width, height);
}

function handleSamples(e) {
    samples = parseInt(e.target.value);
    onSamples(samples);
}

function update() {
    onSize(width, height);
    onSamples(samples);
}