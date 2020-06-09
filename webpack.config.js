var webpack = require('webpack');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

// Webpack uses this to work with directories
const path = require('path');

// This is main configuration object.
// Here you write different options and tell Webpack what to do
module.exports = {

    // Path to your entry point. From this file Webpack will begin his work
    entry: './source/javascripts/_site.js',

    // Path and filename of your result bundle.
    // Webpack will bundle all JavaScript into this file
    output: {
        path: path.resolve(__dirname, '.tmp/dist/'),
        filename: 'javascripts/bundle.js'
    },
    module: {
        rules:[
            {
                test: /\.m?js$/,
                exclude: /(node_modules|bower_components)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        // presets: []
                    }
                }
            }
        ]
    },
    plugins: [
    ],


};
