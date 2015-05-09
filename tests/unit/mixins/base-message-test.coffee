`import Ember from 'ember'`
`import BaseMessageMixin from '../../../mixins/base-message'`
`import { module, test } from 'qunit'`

module 'BaseMessageMixin'

# Replace this with your real tests.
test 'it works', (assert) ->
  BaseMessageObject = Ember.Object.extend BaseMessageMixin
  subject = BaseMessageObject.create()
  assert.ok subject
