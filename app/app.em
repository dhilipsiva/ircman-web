`import Ember from 'ember';`
`import Resolver from 'ember/resolver';`
`import loadInitializers from 'ember/load-initializers';`
`import ENV from 'ircman/config/environment';`

Ember.MODEL_FACTORY_INJECTIONS = true

class App extends Ember*.Application
  modulePrefix: ENV*.modulePrefix
  podModulePrefix: ENV*.podModulePrefix
  Resolver: Resolver

loadInitializers App, ENV*.modulePrefix

`export default App;`
