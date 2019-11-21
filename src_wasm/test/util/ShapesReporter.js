class ShapesReporter {
    
    constructor() { }

    report(tester, isVerbose) {
        const greens = [];
        const reds = [];
        for (const spec of tester.specs) {
            if (spec.isPass) {
                greens.push(spec);
            } else {
                reds.push(spec);
            }
        }
        if (isVerbose) {
            this.reportVerbose(tester, greens, reds);
        } else {
            this.reportFailedOnly(tester, greens, reds);
        }
    }

    reportFailedOnly(tester, greens, reds) {
        if (reds.length === 0) {
            return;
        }
        console.group(`Failed Test`);
        console.log(
            `Char '${tester.char}'`,
            `Codepoint ${tester.char.codePointAt(0)}`
        );
        for (const [i, red] of reds.entries()) {
            console.group(`[Spec ${i}]`)
            console.log('Content\t:', red.content);
            if (red.error) {
                console.log('Error\t:', red.error);
            } else {
                console.log('Result\t:', red.result);
            }
            console.groupEnd();
        }
        console.groupEnd();
        console.log();
    }

    reportVerbose(tester, greens, reds) {
        console.group(`Test`);
        console.log(
            `Char '${tester.char}'`,
            `Codepoint ${tester.char.codePointAt(0)}`
        );
        const passedPct = greens.length / tester.specs.length * 100 | 0;
        console.log(`Passed ${greens.length} (${passedPct}%)`);
        if (reds.length) {
            console.log('Failed', reds.length);
            for (const [i, red] of reds.entries()) {
                console.group(`[Spec ${i}]`)
                console.log('Content\t:', red.content);
                if (red.error) {
                    console.log('Error\t:', red.error);
                } else {
                    console.log('Result\t:', red.result);
                }
                console.groupEnd();
            }
        }
        console.groupEnd();
        console.log();
    }
}



module.exports = {
    ShapesReporter
};