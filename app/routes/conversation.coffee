`import Ember from 'ember'`

ConversationRoute = Ember.Route.extend

  model: (params) ->
    @store.find "conversation", params.conversationId

`export default ConversationRoute`
