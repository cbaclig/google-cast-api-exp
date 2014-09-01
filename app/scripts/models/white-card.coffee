'use strict'

angular
.module('cardsAgainstApp')
.factory 'WhiteCard', ['Card', (Card) -> class WhiteCard extends Card
  constructor: (@text) ->
    super

  getText: -> @text
]
