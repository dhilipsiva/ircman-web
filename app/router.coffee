`import Ember from 'ember';`
`import ENV from 'ircman/config/environment';`

Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route 'login'
  @resource 'channel', path: 'channel/:channelId', ->
  @resource 'conversation', path: 'conversation/:conversationId', ->

`export default Router;`
