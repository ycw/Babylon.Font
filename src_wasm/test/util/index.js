class ShapesTesterCase {
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
        return this.error !== null || Boolean(this.result);
    }
}

class ShapesTester {
    constructor(shapes) {
        this.shapes = shapes;
        this.specs = [];
    }

    should(content, fn) {
        const spec = new ShapesTesterCase(this.shapes, content, fn);
        this.specs.push(spec);
    }

    run() {
        for (const spec of this.specs) {
            spec.run();
        }
    }
}

class ShapesReporter {
    constructor() { }

    report(tester) {
        const greens = [];
        const reds = [];
        for (const spec of tester.specs) {
            if (spec.isPass) {
                greens.push(spec);
            } else {
                reds.push(spec);
            }
        }

        console.log('Total', tester.specs.length);
        console.log('Passed', greens.length);
        if (reds.length) {
            console.log('Failed', reds.length);
            for (const [i, red] of reds.entries()) {
                console.group(`Spec`, i)
                console.log('Content\t:', red.content);
                console.log('Result\t:', red.result);
                console.groupEnd();
            }
        }
    }
}



module.exports = {
    ShapesTester,
    ShapesReporter
};