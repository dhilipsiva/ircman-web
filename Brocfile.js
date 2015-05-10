/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app'),
  assetRev = require('broccoli-asset-rev'),
  htmlmin = require('broccoli-htmlmin');

var app = new EmberApp({
 storeConfigInMeta: false
});


app.import('bower_components/socket.io-client/socket.io.js');
app.import('bower_components/ember-sockets/dist/ember-sockets.js');

var tree = app.toTree();

if (app.env == 'production') {
  tree = assetRev(tree, {
    enabled: true,
    extensions: ['js', 'css', 'png', 'jpg', 'gif'],
    replaceExtensions: ['html', 'js', 'css'],
    prepend: '//d2n6qxtmzlogze.cloudfront.net/'
  });
}

options = {
  quotes: true
};

tree = htmlmin(tree, options);

module.exports = tree
