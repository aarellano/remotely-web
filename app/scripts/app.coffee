window.app = angular.module('remotelyAngularApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/users',
        templateUrl: 'views/user.html',
        controller: 'UsersCtrl'
      .when '/chat',
        templateUrl: 'views/chat.html',
        controller: 'ChatCtrl'
      .otherwise
        redirectTo: '/'