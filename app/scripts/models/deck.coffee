'use strict'

angular
.module('cardsAgainstApp')
.factory 'Deck', -> class Deck
  constructor: (@cards = []) ->

  shuffle: ->
    # TODO randomize the cards

  deal: (count = 1) ->
    for i in [0...count]
      card = @cards.shift()
      @cards.push card
      card

  dealOne: ->
    @deal()[0]
