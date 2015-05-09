`import Ember from 'ember'`

ConversationController = Ember.Controller.extend
  needs: ["application"]

  userChannels: (->
    @store.all "user-channel"
  ).property()

  conversations:( ->
    @store.all "conversation"
  ).property()

`export default ConversationController`
