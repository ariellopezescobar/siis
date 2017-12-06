'use strict'

var app = angular.module('app',['ngMap']);

app.controller('PersonasCtrl', function($scope, $window) {     
    
    $scope.latitud = '0' ;
    $scope.longitud = '0'  ;
    
    $scope.iniciar = function(latitud, longitud) {
        $scope.latitud = latitud;
        $scope.longitud = longitud;
    };
    
    var map;
    
    $scope.$on('mapInitialized', function(evt, evtMap) {
        map = evtMap;
    
        $scope.placeMarker = function(e) {
            console.log('entro');
            var marker = new google.maps.Marker({position: e.latLng, map: map});
            map.panTo(e.latLng);
            $scope.latitud = e.latLng.lat();
            $scope.longitud = e.latLng.lng();
        }
    });
  
});