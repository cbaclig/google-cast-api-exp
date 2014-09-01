'use strict'

angular
.module('cardsAgainstApp')
.factory 'Deck', -> class Deck
  constructor: (@cards = []) ->

  shuffle: ->
    # TODO randomize the cards

  deal: (count = 1) ->
    @cards.splice 0, count

  dealOne: ->
    @deal()[0]
