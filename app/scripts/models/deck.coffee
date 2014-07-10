class Deck
  constructor: (@cards = []) ->

  shuffle: ->
    # TODO randomize the cards

  deal: (count = 1) ->
    @cards.splice 0, count
