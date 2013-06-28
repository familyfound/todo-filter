
var angular = require('angularjs');

// Angular modules (register themselves)
require('{{{name}}}');

angular.module('test', ['note', 'settings'])
  .controller('Tester', function ($scope) {
    // setup scope
  });

