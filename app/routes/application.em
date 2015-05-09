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
        # for vulnerability in result.vulnerabilities
          # store.pushPayload 'vulnerability', vulnerability: vulnerability
        user = store.pushPayload 'user', user: result.user
        store.find('user', result.user.id).then (user)->
          user.set 'urls', result.urls
          controller.set 'currentUser', user
          controller.subscribe user.get "uuid"
        resolve result

  setupController: (controller)->
    if !Ember.isEmpty localStorage.authToken
      @fetchData()

  actions:

    sessionAuthenticationSucceeded: ->
      @_super()
      @fetchData()

`export default ApplicationRoute;`
