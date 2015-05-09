`import Ember from 'ember'`

ChannelController = Ember.Controller.extend
  needs: ["application"]

  userChannels: (->
    @store.all "user-channel"
  ).property()

  conversations:( ->
    @store.all "conversation"
  ).property()

`export default ChannelController`
