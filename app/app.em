`import Ember from 'ember';`
`import Resolver from 'ember/resolver';`
`import loadInitializers from 'ember/load-initializers';`
`import ENV from 'ircman/config/environment';`

Ember.MODEL_FACTORY_INJECTIONS = true

class App extends Ember*.Application
  modulePrefix: ENV*.modulePrefix
  podModulePrefix: ENV*.podModulePrefix
  Resolver: Resolver
  Socket: EmberSockets*.extend
    host: ENV*.socketHost
    port: ENV*.socketPort
    secure: ENV*.socketSecure
    controllers: ['application']
    autoConnect: true

loadInitializers App, ENV*.modulePrefix

`export default App;`
