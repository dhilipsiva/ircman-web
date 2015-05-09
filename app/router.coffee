`import Ember from 'ember';`
`import ENV from 'ircman/config/environment';`

Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route 'login'
  @resource "index", path: '/', ->
    @resource 'channel', path: 'channel/:channelId', ->

`export default Router;`
