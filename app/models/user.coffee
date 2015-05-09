`import DS from 'ember-data'`

User = DS.Model.extend
  socket: DS.attr 'string'
  username: DS.attr 'string'
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  email: DS.attr 'string'
  userServers: DS.hasMany 'user-server'

`export default User`
