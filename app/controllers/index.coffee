`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  needs: ["application"]

  userChannels:( ->
    @store.all "user-channel"
  ).property()

  conversations:( ->
    @store.all "conversation"
  ).property()

`export default IndexController`
