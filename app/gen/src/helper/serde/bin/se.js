import { classOf, sizeOf } from './util.js';
import { serialize as seJson } from '../json/se.js';

export function serialize(
    content,     // text 
    meshStore,   // meshStore
    getMetrics   // fn to get metrics of char
) {
    const json = seJson(content, meshStore, getMetrics);
    const byteLength = computeBufferSize(json);
    const arrayBuffer = new ArrayBuffer(byteLength);

    let byteOffset = 0;
    function set(name, value) {
        const ABView = classOf(name);
        const view = new ABView(arrayBuffer, byteOffset);
        view[0] = value;
        byteOffset += ABView.BYTES_PER_ELEMENT;
    }

    set('version', 1);
    set('ascender', json.ascender);
    set('descender', json.descender);
    set('nChar', json.chars.length);

    for (const char of json.chars) {
        set('codepoint', char.name.codePointAt(0));
        set('advanceWidth', char.advanceWidth);
        set('dataMeta', char.data ? 0x1 : 0x0);
        
        if (!char.data) {
            continue;
        }

        const {
            positions, indices, uvs, normals
        } = char.data;

        set('szPositions', positions.length * sizeOf('positionsElm'));
        set('szIndices', indices.length * sizeOf('indicesElm'));
        set('szUvs', uvs.length * sizeOf('uvsElm'));
        set('szNormals', normals.length * sizeOf('normalsElm'));

        for (const elm of positions) {
            set('positionsElm', elm);
        }
        for (const elm of indices) {
            set('indicesElm', elm);
        }
        for (const elm of uvs) {
            set('uvsElm', elm);
        }
        for (const elm of normals) {
            set('normalsElm', elm);
        }
    }

    return arrayBuffer;
}



function computeBufferSize(json) {
    let sz = 0;
    sz += sizeOf('version');
    sz += sizeOf('ascender');
    sz += sizeOf('descender');
    sz += sizeOf('nChar');
    for (const char of json.chars) {
        sz += sizeOf('codepoint');
        sz += sizeOf('advanceWidth');
        sz += sizeOf('dataMeta');
        if (!char.data) {
            continue;
        }
        const {
            positions, indices, uvs, normals
        } = char.data;
        sz += sizeOf('szPositions');
        sz += sizeOf('szIndices');
        sz += sizeOf('szUvs');
        sz += sizeOf('szNormals');
        sz += positions.length * sizeOf('positionsElm');
        sz += indices.length * sizeOf('indicesElm');
        sz += uvs.length * sizeOf('uvsElm');
        sz += normals.length * sizeOf('normalsElm');
    }
    return sz;
}