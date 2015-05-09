`import Ember from 'ember'`
`import Notify from 'ember-notify';`
`import ENUMS from 'ircman/enums';`

SocketMixin = Ember.Mixin.create

  needs: ['application']

  subscribe: (room) ->
    @socket.emit "subscribe", room: room

  sockets:
    connect: ->
      console.log "Socket is connected!"

    disconnect: ->
      console.log "Socket got disconnected!"

    message_new: (data)->
      Notify.info "New Message"
      message = @store.push "message", @store.normalize "message", data.message

    pm_new: (data)->
      Notify.info "New Private Message"
      pm = @store.push "private-message", @store.normalize "private-message", data.pm

    user_server_new: (data)->
      Notify.info "New server added"
      server = @store.push "server", @store.normalize "server", data.server
      user_server = @store.push "user-server", @store.normalize "user-server", data.user_server

    user_channel_new: (data)->
      Notify.info "New Channel added"
      channel = @store.push "channel", @store.normalize "channel", data.channel
      user_channel = @store.push "user-channel", @store.normalize "user-channel", data.user_channel

    conversation_new: (data)->
      Notify.info "New Conversation"
      conversation = @store.push "conversation", @store.normalize "conversation", data.conversation


    message: (data) ->
      message = data.message
      notifyType = data.notifyType
      Notify.info message if notifyType is ENUMS.NOTIFY.INFO
      Notify.success message if notifyType is ENUMS.NOTIFY.SUCCESS
      Notify.warning message if notifyType is ENUMS.NOTIFY.WARNING
      Notify.alert message if notifyType is ENUMS.NOTIFY.ALERT
      Notify.error message if notifyType is ENUMS.NOTIFY.ERROR

    logout: ->
      localStorage.clear()
      location.reload()

    reload: ->
      location.reload()

`export default SocketMixin`
