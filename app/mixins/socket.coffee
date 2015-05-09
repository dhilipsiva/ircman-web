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
