`import Ember from 'ember'`

ChatInputComponent = Ember.Component.extend
  classNames: ["input-group", "chat-fix"]
  model: null
  text: ""
  actions:
    sendChat: ->
      debugger

`export default ChatInputComponent`
