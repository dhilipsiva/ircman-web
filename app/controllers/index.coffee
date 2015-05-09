`import Ember from 'ember'`
`import SocketMixin from 'ircman/mixins/socket';`

IndexController = Ember.Controller.extend SocketMixin,
  needs: ["application"]

  userChannels:( ->
    @store.all "user-channel"
  ).property()

  conversations:( ->
    @store.all "conversation"
  ).property()

`export default IndexController`
