/**
 * Created by Monster on 7/28/2017.
 */
var myApp=angular.module('myApp',[]);
myApp.controller('MyController',function ($scope,$http){
    $http.get('list-genah-books').success(function(data){
        $scope.books=data;
        /*$scope.arrange='name';*/
    });

});