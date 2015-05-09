`import Ember from 'ember'`
`import Notify from 'ember-notify';`
`import ENV from 'ircman/config/environment'`

ChatInputComponent = Ember.Component.extend
  classNames: ["input-group", "chat-fix"]
  model: null
  text: ""
  actions:
    sendChat: ->
      data =
        text: @get 'text'
        modelId: @get("model.id")
        modelType: @get("model").constructor.typeKey

      postUrl = [ENV.APP.API_BASE, ENV.endpoints.message].join '/'
      that = @
      Ember.$.post postUrl, data
      .then ->
        that.set "text", ""
      .fail (xhr, message, status) ->
        if xhr.status is 403
          Notify.error xhr.responseJSON.message
        else
          Notify.error "A network error occured! Please try again later"
`export default ChatInputComponent`
