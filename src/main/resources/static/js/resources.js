(function(){
  'use strict';
  angular.module('app')
  .factory('Blogs', ['$resource', function($resource) {
    return $resource('/blog', {}, {
      query: {method: 'GET', url: '/blogs', isArray: true},
      save: {method: 'POST', url: '/new/blog'}
    });
  }]);
})();
