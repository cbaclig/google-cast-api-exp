'use strict'

angular
.module('cardsAgainstApp')
.factory 'Player', ->

  PLAYER_ID = 0

  class Player
    constructor: (@name, @whiteCards = []) ->
      @id = PLAYER_ID++
      @blackCards = []

    getScore: ->
      @blackCards.length

    addWhiteCards: (whiteCards) ->
      @whiteCards = @whiteCards.concat whiteCards

    addBlackCards: (blackCards) ->
      @blackCards = @blackCards.concat blackCards

    playWhiteCard: (cardId) ->
      @whiteCards.splice(cardId, 1)[0]

    isEqual: (player) ->
      @id is player.id
