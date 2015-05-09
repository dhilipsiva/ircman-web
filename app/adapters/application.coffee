`import DS from 'ember-data'`
`import ENV from 'ircman/config/environment';`

ApplicationAdapter = DS.RESTAdapter.extend
  host: ENV.APP.API_HOST
  namespace: ENV.APP.API_NAMESPACE

`export default ApplicationAdapter`
