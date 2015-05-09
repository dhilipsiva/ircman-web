`import DS from 'ember-data'`

UserServer = DS.Model.extend {
  label: DS.attr 'string'
  username: DS.attr 'string'
  password: DS.attr 'string'
  nickname: DS.attr 'string'
  realname: DS.attr 'string'
}

`export default UserServer`
