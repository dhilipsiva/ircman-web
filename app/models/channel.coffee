`import DS from 'ember-data'`

Channel = DS.Model.extend
  name: DS.attr 'string'
  server: DS.belongsTo 'server'
  userChannels: DS.hasMany 'user-channel'
  messages: DS.hasMany 'message', async: true

`export default Channel`
