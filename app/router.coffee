`import Ember from 'ember';`
`import ENV from 'ircman/config/environment';`

Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route 'login'

`export default Router;`
