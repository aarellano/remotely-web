app.controller 'MainCtrl', ['$scope', '$rootScope', ($scope, $rootScope) ->
	$scope.user = 'Andres'
	dispatcher = new WebSocketRails('localhost:3000/websocket', true)

	# this is not working properly
	dispatcher.bind 'new_message', newMessage

	$scope.sendMessage = (event) =>
		# this is working so far
		dispatcher.trigger 'new_message', {user_name: 'Andres', msg_body: $scope.message}

	newMessage = (message) =>
		$scope.display = message
		$scope.apply

]
