class Player
  constructor: (@name, @whiteCards = []) ->
    @blackCards = []

  getScore: ->
    @blackCards.length

  addWhiteCard: (whiteCards...) ->
    @whiteCards = @whiteCards.concat whiteCards

  addBlackCard: (blackCards...) ->
    @blackCards = @blackCards.concat blackCards
