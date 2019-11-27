const classTable = {
    version: Uint32Array,
    ascender: Float32Array,
    descender: Float32Array,
    nChar: Uint32Array,
    codepoint: Uint32Array,
    advanceWidth: Float32Array,
    dataMeta: Uint32Array,
    szPositions: Uint32Array, // sz = bytes occupied by array
    szIndices: Uint32Array,
    szUvs: Uint32Array,
    szNormals: Uint32Array,
    positionsElm: Float32Array,
    indicesElm: Uint32Array,
    uvsElm: Float32Array,
    normalsElm: Float32Array
};




export function classOf(name) {
    return classTable[name];
}



export function sizeOf(name) {
    return classOf(name).BYTES_PER_ELEMENT;
}
