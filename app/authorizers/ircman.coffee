`import Ember from 'ember';`
`import Base from 'simple-auth/authorizers/base';`

b64EncodeUnicode = (str) ->
  btoa encodeURIComponent(str).replace /%([0-9A-F]{2})/g, (match, p1) ->
    String.fromCharCode '0x' + p1

getB64Token = (ls)->
  userId = ls.authUser
  token = ls.authToken
  b64EncodeUnicode "#{userId}:#{token}"

IRCManAuthorizer = Base.extend

  authorize: (jqXHR, requestOptions) ->
    token = getB64Token localStorage
    jqXHR.setRequestHeader 'Authorization', "Basic #{token}"

`export default IRCManAuthorizer;`
