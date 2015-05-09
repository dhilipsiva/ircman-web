`import DS from 'ember-data'`

Server = DS.Model.extend {
  host: DS.attr 'string'
  port: DS.attr 'number'
  isSsl: DS.attr 'boolean'
  isSasl: DS.attr 'boolean'
}

`export default Server`
