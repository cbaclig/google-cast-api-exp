class Board
  constructor: ->
    @clear()

  getBlackCard: -> @blackCard

  setBlackCard: (@blackCard) ->

  addWhiteCard: (whiteCard) ->
    @whiteCards.push whiteCard

  clear: ->
    @blackCard = null
    @whiteCards = []
