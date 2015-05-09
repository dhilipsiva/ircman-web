`import Ember from 'ember'`

ChannelRoute = Ember.Route.extend

  model: (params) ->
    @store.find "channel", params.channelId

`export default ChannelRoute`
