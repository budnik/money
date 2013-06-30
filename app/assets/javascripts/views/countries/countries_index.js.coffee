class Money.Views.CountriesIndex extends Backbone.View
  eachTemplate: JST['countries/country']
  template: JST['countries/index']
  className: 'well'

  render: ->
    @$el.html @template @collection
    @$('p').html @collection.map(@eachTemplate).join()
    @
