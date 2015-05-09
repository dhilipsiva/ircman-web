`import DS from 'ember-data'`
`import BaseMessageMixin from 'ircman/mixins/base-message'`

PrivateMessage = DS.Model.extend BaseMessageMixin,
  read: DS.attr 'boolean'
  userChannel: DS.belongsTo 'user-channel'
  conversation: belongsTo 'conversation'

`export default PrivateMessage`
