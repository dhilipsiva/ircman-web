`import Ember from 'ember'`
`import SocketMixin from 'ircman/mixins/socket';`

ApplicationController = Ember.Controller.extend SocketMixin,
  currentUser: null

`export default ApplicationController`
