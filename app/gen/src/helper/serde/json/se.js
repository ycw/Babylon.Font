export function serialize(
    content,     // text 
    meshStore,   // meshStore
    getMetrics   // fn to get metrics of char
) {
    const result = {
        ascender: NaN,
        descender: NaN,
        chars: []
    };

    if (content.length) {
        const { ascender, descender } = getMetrics(content[0]);
        result.ascender = ascender;
        result.descender = descender;
    } else {
        return result;
    }

    const names = new Set([...content]);

    for (const name of names) {

        // Ignore newline
        if (name == '\n') {
            continue;
        }

        // Handle "data" field
        let data = null;
        const { mesh } = meshStore.get(name);
        if (mesh) {
            data = mesh.geometry.serializeVerticeData();
            delete data.id;
            delete data.updatable;
        }

        // Handle "advanceWidth" field
        const { advanceWidth } = getMetrics(name);

        result.chars.push({ name, data, advanceWidth });
    }

    return result;
}