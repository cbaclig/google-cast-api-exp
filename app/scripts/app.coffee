'use strict'

###*
 # @ngdoc overview
 # @name cardsAgainstApp
 # @description
 # # cardsAgainstApp
 #
 # Main module of the application.
###
angular
  .module('cardsAgainstApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
