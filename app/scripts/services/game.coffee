'use strict'

angular
.module('cardsAgainstApp')
.factory 'GameService', [
  'Deck'
  'BlackCard'
  'WhiteCard'
  'Player'
  'Board'
  'Game'
  'blackCardList'
  'whiteCardList'
  (Deck, BlackCard, WhiteCard, Player, Board, Game, blackCardList, whiteCardList) ->

    window.game = new class GameService
      constructor: ->
        @blackCards = new Deck (new BlackCard c for c in blackCardList)
        @whiteCards = new Deck (new WhiteCard c for c in whiteCardList)
        @board = new Board
        @players = []
        @game = new Game @board, @blackCards, @whiteCards, @players

      nextBlackCard: ->
        @game.nextBlackCard()

      addPlayer: (name) ->
        @game.join new Player(name)

      playWhiteCard: (playerId, cardId) ->
        @game.playWhiteCard playerId, cardId

      selectWinningWhiteCard: (cardId) ->
        @game.selectWinningWhiteCard cardId

      removePlayer: ->
]
