var path = require('path');

module.exports = {
  mode: 'development',
  entry: './src/index.coffee',
  output: {
    path: path.resolve(__dirname),
    filename: 'bundle.js',
    publicPath: '/'
  },
  module: {
    rules: [{ test: /\.coffee$/, use: 'coffee-loader' }]
  },
  resolve: {
    extensions: ['.js', '.coffee']
  },
  devServer: {
    contentBase: './'
  }
};
