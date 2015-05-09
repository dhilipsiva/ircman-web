/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'ircman',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },
    APP: {
      API_HOST: '',
      API_NAMESPACE: 'api'
    },
    'simple-auth': {
      store: 'simple-auth-session-store:local-storage',
      authorizer: 'authorizer:ircman',
      authenticator: 'authenticator:ircman',
      session: 'session:ircman'
    },
    endpoints: {
      token: 'token',
      tokenNew: 'token/new.json',
      init: 'init',
      message: 'message'
    }
  };

  if (environment === 'development') {
    ENV.APP.API_HOST = "http://localhost:8000"
    // ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    ENV.APP.LOG_TRANSITIONS = true;
    ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
    ENV.socketHost = 'localhost';
    ENV.socketPort = '8008';
    ENV.socketSecure = false;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
    ENV.socketHost = 'ircman.co';
    ENV.socketPort = '80';
    ENV.socketSecure = false;
  }
  ENV.contentSecurityPolicy = {
    "connect-src": "'self' http://localhost:8000 http://localhost:8008  ws://localhost:8008",
    "font-src": "'self' http://fonts.gstatic.com",
    "style-src": "'self' fonts.googleapis.com",
    "img-src": "'self' https://www.gravatar.com http://www.gravatar.com"
  };

  ENV.APP.API_BASE = [ENV.APP.API_HOST, ENV.APP.API_NAMESPACE].join("/");
  ENV['simple-auth']['crossOriginWhitelist'] = [ENV.APP.API_HOST];
  ENV['simple-auth']['loginEndpoint'] = [ENV.APP.API_BASE, ENV.endpoints.tokenNew].join("/");
  ENV['simple-auth']['logoutEndpoint'] = [ENV.APP.API_BASE, ENV.endpoints.logout].join("/");

  return ENV;
};
