`import Ember from 'ember'`
`import DS from 'ember-data'`

BaseMessageMixin = Ember.Mixin.create
  text: DS.attr 'string'
  createdOn: DS.attr 'date'

`export default BaseMessageMixin`
