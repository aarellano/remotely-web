'use strict'

describe 'Controller: ChatCtrl', () ->

  # load the controller's module
  beforeEach module 'remotelyAngularApp'

  ChatCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ChatCtrl = $controller 'ChatCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
