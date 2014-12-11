class Money.Views.CountriesIndex extends Backbone.View
  eachTemplate: JST['countries/country']
  template: JST['countries/index']
  className: 'well countries'
  events:
    'click a': 'removeVisited'

  render: ->
    @$el.html @template @collection
    @$('p').html @collection.map(@eachTemplate).join()
    @

  removeVisited: (e)->
    e.preventDefault()
    @$('.visited-countries').remove()
 
