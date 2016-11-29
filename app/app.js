var app = angular.module('app',['ngRoute']);

app.config(function($routeProvider, $locationProvider)
{
  // remove o # da url
  $locationProvider.html5Mode(true);

  $routeProvider

  .when('/', {
    templateUrl : 'app/views/inicio.html',
    controller : 'InicioCtrl',
  })

  .when('/clientes', {
    templateUrl : 'app/views/clientes.html',
    controller : 'ClientesCtrl',
  })

  .when('/executores', {
    templateUrl : 'app/views/executores.html',
    controller : 'ExecutoresCtrl',
  })

  .when('/os', {
    templateUrl : 'app/views/executores.html',
    controller : 'OsCtrl',
  })

  .when('/ajuda', {
    templateUrl : 'app/views/ajuda.html',
    controller : 'AjudaCtrl',
  })
  .otherwise ({ redirectTo: '/' });
});
