`import DS from 'ember-data'`

UserChannel = DS.Model.extend
  nickname: DS.attr 'string'
  password: DS.attr 'string'
  mode: DS.attr 'string'
  userServer: DS.belongsTo 'user-server', async: true
  channel: DS.belongsTo 'channel'
  messages: DS.hasMany 'message'
  privateMessages: DS.hasMany 'private-message'

`export default UserChannel`
