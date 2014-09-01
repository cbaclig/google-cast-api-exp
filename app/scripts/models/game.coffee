'use strict'

angular
.module('cardsAgainstApp')
.factory 'Game', ->
  class Game
    MAX_WHITE_CARDS = 2

    constructor: (@board, @blackCards, @whiteCards, @players = []) ->
      @winningCard = null
      @winningPlayer = null

      @nextBlackCard()

    nextBlackCard: ->
      @board.setBlackCard @blackCards.dealOne()

    playWhiteCard: (playerId, cardId) ->
      player = @players[playerId]
      card = player.removeWhiteCard cardId

      @board.addWhiteCard player, card

    selectWinningWhiteCard: (cardId) ->
      [@winningCard, @winningPlayer] = @board.getWhiteCardAndPlayer cardId

    join: (player) ->
      player.addWhiteCards @whiteCards.deal(MAX_WHITE_CARDS)
      @players.push player

    leave: (player) ->
      @players.remove player

    playRound: -> $.Deferred (deferred) ->
      @board.setBlackCard @blackCards.deal()

      @waitForPlayerWhiteCards()
      .then =>
        @waitForWinnerToBeSelected()
      .then (winningPlayer) =>
        winningPlayer.addBlackCard @board.getBlackCard()
        @board.clear()
        defered.resolve()
