`import Ember from 'ember'`

ChannelController = Ember.Controller.extend
  needs: ["application"]

  userChannels: (->
    @store.all "user-channel"
  ).property()

`export default ChannelController`
