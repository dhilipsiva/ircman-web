`import DS from 'ember-data'`
`import BaseMessageMixin from 'ircman/mixins/base-message'`

Message = DS.Model.extend BaseMessageMixin,
  channel: DS.belongsTo 'channel'
  userChannel: DS.belongsTo 'user-channel', async:true

`export default Message`
