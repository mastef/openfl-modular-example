const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');
const webpack = require('webpack');
const glob = require("glob");

module.exports = {
	resolve: {
		alias: {
			"openfl": "openfl/lib/openfl"
		}
	},
	entry: {
		entry: "./comp/entry.js",
		module1: "./comp/Module1.js",
		module2: "./comp/Module2.js",
		module3: "./comp/Module3.js",
		module4: "./comp/Module4.js",
		fla: glob.sync("./comp/fla/*.js"),
		items: glob.sync("./comp/fla/items/**/*.js"),
		media: glob.sync("./comp/fla/media/**/*.js"),
		game: glob.sync("./comp/game/**/*.js"),
		js: glob.sync("./comp/js/**/*.js"),
		haxe: glob.sync("./comp/haxe/**/*.js"),
		openfl: glob.sync("./comp/openfl/**/*.js"),
	},
	output: {
		filename: "[name].js",
		path: path.resolve(__dirname, 'dist'),
		publicPath: "/"
	},
	plugins: [
		new CleanWebpackPlugin(['dist']),
		new HtmlWebpackPlugin({
			title: 'OpenFL JS test'
		}),
		new webpack.NamedModulesPlugin(),
		new webpack.optimize.CommonsChunkPlugin({
			name: 'common', // Specify the common bundle's name.
			minChunks: 4
		}),
		new webpack.SourceMapDevToolPlugin({
			filename: "[file].map",
			exclude: ["vendor.js"]
		})
	]
};
