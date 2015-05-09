`import DS from 'ember-data'`

UserChannel = DS.Model.extend {
  nickname: DS.attr 'string'
  password: DS.attr 'string'
  mode: DS.attr 'string'
}

`export default UserChannel`
