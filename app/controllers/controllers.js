app.controller('InicioCtrl', function($rootScope, $location){
  $rootScope.activetab = $location.path();
});

app.controller('ClientesCtrl', function($rootScope, $location){
  $rootScope.activetab = $location.path();
});

app.controller('ExecutoresCtrl', function($rootScope, $location){
  $rootScope.activetab = $location.path();
});

app.controller('OsCtrl', function($rootScope, $location){
  $rootScope.activetab = $location.path();
});

app.controller('AjudaCtrl', function($rootScope, $location){
  $rootScope.activetab = $location.path();
});
