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

  # # initialize decks
  # blackCards = new Deck (new BlackCard c for c in BLACK_CARDS)
  # whiteCards = new Deck (new WhiteCard c for c in WHITE_CARDS)

  # # players = []
  # # players.push new Player name

  # board = new Board()

  # game = new Game board, blackCards, whiteCards

    $scope.foo = 1111
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
