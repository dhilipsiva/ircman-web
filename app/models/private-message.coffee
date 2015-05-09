`import DS from 'ember-data'`

PrivateMessage = DS.Model.extend {
  read: DS.attr 'boolean'
}

`export default PrivateMessage`
