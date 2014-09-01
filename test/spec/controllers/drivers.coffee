'use strict'

describe 'Controller: DriversCtrl', ->

  # load the controller's module
  beforeEach module 'cardsAgainstApp'

  DriversCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DriversCtrl = $controller 'DriversCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
