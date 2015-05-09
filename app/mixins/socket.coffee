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

    message_new: (message)->
      Notify.success "New Message"
      @store.push "message", @store.normalize "message", message

    pm_new: (pm)->
      Notify.success "New Private Message"
      @store.push "private-message", @store.normalize "private-message", pm

    user_server_new: (user_server)->
      Notify.success "New server added"
      @store.push "user-server", @store.normalize "user-server", user_server

    user_channel_new: (user_channel)->
      Notify.success "New Channel added"
      @store.push "user-channel", @store.normalize "user-channel", user_channel

    conversation_new: (conversation)->
      Notify.success "New Conversation"
      @store.push "conversation", @store.normalize "conversation", conversation


    message: (data) ->
      message = data.message
      notifyType = data.notifyType
      Notify.success message if notifyType is ENUMS.NOTIFY.success
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
