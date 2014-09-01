'use strict'

angular
.module('cardsAgainstApp')
.factory 'Board', -> class Board
  constructor: ->
    @_cardPlayerMap = {}

    @clear()

  setBlackCard: (@blackCard) ->

  addWhiteCard: (player, whiteCard) ->
    @_cardPlayerMap[whiteCard] = player

    @whiteCards.push whiteCard

  getWhiteCardAndPlayer: (cardId) ->
    [
      @whiteCards[cardId]
      @_cardPlayerMap[@whiteCards[cardId]]
    ]

  hasWhiteCardForPlayer: (player) ->
    for whiteCard, existingPlayer of @_cardPlayerMap
      return true if existingPlayer.isEqual player

    false

  clear: ->
    @blackCard = null
    @whiteCards = []
