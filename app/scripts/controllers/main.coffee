'use strict'

###*
 # @ngdoc function
 # @name cardsAgainstApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the cardsAgainstApp
###
angular.module('cardsAgainstApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
