class Money.Views.Trip extends Backbone.View
  tagName: 'tr'
  className: 'trip'
  template: JST['trips/trip']

  render: ->
    @$el.html @template @model
    @
