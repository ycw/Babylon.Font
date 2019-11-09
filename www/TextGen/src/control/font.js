import { $ } from '../helper/dom.js';

export const size = 1;
export let ppc;
export let eps;
export let depth;
let render;
let onDrop;

export function init(o) {
    ppc = o.ppc;
    eps = o.eps;
    depth = o.depth;
    render = o.render;
    onDrop = o.onDrop;

    $('#el_fontPpc').oninput = handlePpc;
    $('#el_fontEps').oninput = handleEps;
    $('#el_fontDepth').oninput = handleDepth;
    $('body').ondragover = handleDragOver;
    $('body').ondrop = handleDrop;

    $('#el_fontPpc').value = ppc;
    $('#el_fontEps').value = eps;
    $('#el_fontDepth').value = depth;

    update();
}

function handlePpc(e) {
    ppc = parseInt(e.target.value, 10);
    update();
}

function handleEps(e) {
    eps = parseFloat(e.target.value);
    update();
}

function handleDepth(e) {
    depth = parseFloat(e.target.value);
    update();
}

function handleDragOver(e) {
    e.preventDefault();
}

function handleDrop(e) {
    e.preventDefault();
    for (const item of e.dataTransfer.items) {
        if (item.kind == 'file') {
            const file = item.getAsFile();
            onDrop(file);
            break;
        }
    }
}

function update() {
    render();
}