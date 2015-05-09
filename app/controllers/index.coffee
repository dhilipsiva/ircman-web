`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  needs: ["application"]

  userChannels:( ->
    @store.all "user-channel"
  ).property()

`export default IndexController`
