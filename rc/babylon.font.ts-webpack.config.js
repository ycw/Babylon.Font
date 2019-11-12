module.exports = [{
    mode: 'production',
    devtool: 'source-map',
    entry: './src/babylon.font.ts', // rel to package.json (i.e. proj root)
    output: {
        path: require('path').join(__dirname, '../dist/'),
        filename: 'babylon.font.js',
        library: 'BF'
    },
    externals: {
        'babylonjs': 'BABYLON',
        'opentype.js': 'opentype'
    },
    module: {
        rules: [
            { test: /\.ts$/, use: [{ loader: 'ts-loader' }] },
        ]
    },
    resolve: {
        extensions: ['.ts', '.js']
    }
}]; 