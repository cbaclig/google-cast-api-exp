class Game
  MAX_WHITE_CARDS = 7

  constructor: (@board, @blackCards, @whiteCards, @players = []) ->

  join: (name) ->
    player = new Player name
    player.addWhiteCard @whiteCards.deal(MAX_WHITE_CARDS)

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
