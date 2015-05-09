`import DS from 'ember-data'`

UserServer = DS.Model.extend DS.EmbeddedRecordsMixin,
  label: DS.attr 'string'
  user: DS.belongsTo 'user'
  server: DS.belongsTo 'server'
  username: DS.attr 'string'
  password: DS.attr 'string'
  nickname: DS.attr 'string'
  realname: DS.attr 'string'
  userChannels: DS.hasMany 'user-channel'

`export default UserServer`
