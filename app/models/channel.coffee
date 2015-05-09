`import DS from 'ember-data'`

Channel = DS.Model.extend
  name: DS.attr 'string'
  server: DS.belongsTo 'server'
  userChannels: DS.hasMany 'user-channel'

`export default Channel`
