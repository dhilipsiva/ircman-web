`import DS from 'ember-data'`

Conversation = DS.Model.extend
  userChannel1: DS.belongsTo 'user-channel', inverse: null
  userChannel2: DS.belongsTo 'user-channel', inverse: null
  privateMessages: DS.hasMany 'private-message'

`export default Conversation`
