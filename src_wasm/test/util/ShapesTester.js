class ShapesTesterSpec {
    
    constructor(shapes, content, fn) {
        this.content = content;
        this.fn = fn;
        this.shapes = shapes;
        this.error = null;
        this.result = undefined;
    }
    run() {
        try {
            this.result = this.fn(this.shapes);
        } catch (e) {
            this.error = e;
        }
    }
    get isPass() {
        return this.error === null || Boolean(this.result);
    }
}



class ShapesTester {

    constructor(shapes, char) {
        this.shapes = shapes;
        this.specs = [];
        this.char = char;
    }

    should(content, fn) {
        const spec = new ShapesTesterSpec(this.shapes, content, fn);
        this.specs.push(spec);
    }

    run() {
        for (const spec of this.specs) {
            spec.run();
        }
    }
}



module.exports = {
    ShapesTester
};