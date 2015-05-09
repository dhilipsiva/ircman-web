`import Ember from 'ember';`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';`
`import ENV from 'ircman/config/environment';`
`import EmberCLIICAjax from 'ic-ajax';`

class ApplicationRoute extends Ember.Route with ApplicationRouteMixin
  fetchData: ->
    store = @store
    initUrl = [ENV.APP.API_BASE, ENV.endpoints.init].join '/'
    controller = @controller
    new Ember.RSVP.Promise (resolve, reject) ->
      init = EmberCLIICAjax url:initUrl, type: "get"
      init.then (result) ->
        user = store.pushPayload 'user', user: result.user
        store.find('user', result.user.id).then (user)->
          user.set 'urls', result.urls
          controller.set 'currentUser', user
          # controller.subscribe user.get "id"

        for server in result.servers
          store.pushPayload 'server', 'server': server

        for channel in result.channels
          store.pushPayload 'channel', 'channel': channel

        for user_server in result.user_servers
          store.pushPayload 'user-server', 'user-server': user_server

        for user_channel in result.user_channels
          store.pushPayload 'user-channel', 'user-channel': user_channel

        for conversation in result.conversations
          store.pushPayload 'conversation', 'conversation': conversation

        for message in result.messages
          store.pushPayload 'message', 'message': message

        for private_message in result.private_messages
          store.pushPayload 'private-message', 'private-message': private_message

        resolve result


  setupController: (controller)->
    if !Ember.isEmpty localStorage.authToken
      @fetchData()

  actions:

    sessionAuthenticationSucceeded: ->
      @_super()
      @fetchData()

`export default ApplicationRoute;`
