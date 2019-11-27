let url;



// Save {stuff} locally with filename={filename}
// ref https://doc.babylonjs.com/resources/save_babylon

export function save(stuff, filename) {
    const blob = new Blob(stuff, { type: 'octet/stream' });
    url && URL.revokeObjectURL(url);
    url = URL.createObjectURL(blob);

    const a = document.createElement('a');
    a.href = url;
    a.download = filename;

    const ev = document.createEvent('MouseEvents');
    ev.initEvent('click', true, false);
    a.dispatchEvent(ev);
}
