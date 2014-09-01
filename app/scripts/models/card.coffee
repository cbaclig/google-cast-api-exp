'use strict'

angular
.module('cardsAgainstApp')
.factory 'Card', ->

  CARD_ID = 0

  class Card
    constructor: ->
      @id = CARD_ID++
