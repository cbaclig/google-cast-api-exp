'use strict'

###*
 # @ngdoc function
 # @name cardsAgainstApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the cardsAgainstApp
###
angular.module('cardsAgainstApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
