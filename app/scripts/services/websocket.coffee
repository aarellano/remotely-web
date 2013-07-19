app.factory 'Websocket', () ->

	window.Chat = {}

	jQuery ->
  window.chatController = new Chat.Controller('localhost:3000/websocket', true)

	class Chat.Controller
	  constructor: (url,useWebSockets) ->
	    @dispatcher = new WebSocketRails(url,useWebSockets)
	    @bindEvents()

	  bindEvents: =>
	    @dispatcher.bind 'new_message', @newMessage

	  newMessage: (message) =>
	  	alert('new message')