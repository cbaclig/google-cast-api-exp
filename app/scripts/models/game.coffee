'use strict'

angular
.module('cardsAgainstApp')
.factory 'Game', ->
  class Game
    MAX_WHITE_CARDS = 2

    constructor: (@board, @blackCards, @whiteCards, @players = []) ->
      @nextBlackCard()

    nextBlackCard: ->
      @_clearWinningRound()
      @board.clear()
      @board.setBlackCard @blackCards.dealOne()

    playWhiteCard: (playerId, cardId) ->
      player = @players[playerId]
      
      unless @board.hasWhiteCardForPlayer player
        @board.addWhiteCard player, player.playWhiteCard(cardId)
        player.addWhiteCards [@whiteCards.dealOne()]

    selectWinningWhiteCard: (cardId) ->
      [@winningCard, @winningPlayer] = @board.getWhiteCardAndPlayer cardId

      @winningPlayer.addBlackCards @winningCard

    join: (player) ->
      player.addWhiteCards @whiteCards.deal(MAX_WHITE_CARDS)
      @players.push player

    leave: (player) ->
      @players.remove player

    _clearWinningRound: ->
      @winningCard = null
      @winningPlayer = null
