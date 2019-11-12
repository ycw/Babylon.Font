import { $ } from '../helper/dom.js';

export let content;
let render;

export function init(o) {
    content = o.content;
    render = o.render;

    $('#el_textContent').oninput = handleContent;

    $('#el_textContent').value = content;

    update();
}

function handleContent(e) {
    content = e.target.value;
    update();
}

function update() {
    render();
}
