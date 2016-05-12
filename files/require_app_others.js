
window.React = require('react');

window.__registerComponent = function(name,c) {
    var { doRegister } = require('./require_app');
    var { AppRegistry } = require('react-native');
    doRegister(name,c,AppRegistry);
};

var { registerRnComponents } = require('./register_rn');
var __rn = require('react-native');

module.exports = {
  RegRn: registerRnComponents(__rn),
  Runmain: require('./all')
};
