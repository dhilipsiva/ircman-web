`import DS from 'ember-data'`
`import BaseMessageMixin from 'ircman/mixins/base-message'`

Message = DS.Model.extend BaseMessageMixin,
  channel: DS.belongsTo 'user-channel'

`export default Message`
