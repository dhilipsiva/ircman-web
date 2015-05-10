`import DS from 'ember-data'`
`import BaseMessageMixin from 'ircman/mixins/base-message'`

PrivateMessage = DS.Model.extend BaseMessageMixin,
  read: DS.attr 'boolean'
  userChannel: DS.belongsTo 'user-channel', async: true
  conversation: DS.belongsTo 'conversation'

`export default PrivateMessage`
