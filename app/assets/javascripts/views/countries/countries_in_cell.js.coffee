class Money.Views.CountriesInCell extends Backbone.View
  eachTemplate: JST['countries/country']
  tagName: 'td'

  render: ->
    @$el.html @collection.map(@eachTemplate).join(' ')
    @
