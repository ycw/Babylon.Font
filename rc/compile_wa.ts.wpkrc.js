const base = {
    mode: 'production',
    entry: './src/compile_wa.ts', // rel to package.json (i.e. proj root)
    module: {
        rules: [
            { test: /\.ts$/, use: [{ loader: 'ts-loader' }] },
        ]
    },
    resolve: {
        extensions: ['.ts', '.js']
    }
};



module.exports = [{
    ...base,    
    output: {
        path: require('path').join(__dirname, '../dist/'),
        filename: 'compile_wa.js',
        library: 'compile_wa'
    },
}, {
    ...base,
    output: {
        path: require('path').join(__dirname, '../testbed/'),
        filename: 'compile_wa.js',
        library: 'compile_wa'
    }
}]; 