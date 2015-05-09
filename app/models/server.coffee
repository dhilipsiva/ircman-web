`import DS from 'ember-data'`

Server = DS.Model.extend
  host: DS.attr 'string'
  port: DS.attr 'number'
  isSsl: DS.attr 'boolean'
  isSasl: DS.attr 'boolean'
  userServers: DS.hasMany 'user-server'
  channels: DS.hasMany 'channel'

`export default Server`
