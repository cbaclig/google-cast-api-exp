'use strict'

###*
 # @ngdoc function
 # @name cardsAgainstApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the cardsAgainstApp
###
angular.module('cardsAgainstApp')
  .controller 'MainCtrl', ['GameService', (gameService) ->

    @game = gameService.game
    @board = gameService.board
    @players = gameService.players

    @nextBlackCard = ->
      gameService.nextBlackCard()

    @addPlayer = (name) ->
      gameService.addPlayer name

    @playWhiteCard = (player, card) ->
      gameService.playWhiteCard player, card

    @selectWinningWhiteCard = (cardId) ->
      gameService.selectWinningWhiteCard cardId

    return
  ]
