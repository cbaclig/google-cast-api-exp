class BlackCard extends Card
  BLANK_REGEXP = "_+"

  constructor: (@text) ->
    @blanks = @text.match(new RegExp(BLANK_REGEXP, 'g')).length

  getText: -> @text

  # example:
  # blackCard.apply (c.getText() for c in whiteCards)
  apply: (fillers...) ->
    # TODO sub classes? strategy pattern?
    if @blanks
      if @blanks isnt fillers.length
        throw new Exception """
          #{@blanks} fillers expected. Only #{fillers.length} given
        """

        fillers.reduce (result, filler) ->
          result.replace new RegExp(BLANK_REGEXP), filler
        , @getText()
    else
      @getText() + ' ' + fillers.join(' ')
