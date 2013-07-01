class Money.Views.TripsIndex extends Backbone.View
  id: 'main-content'
  template: JST['trips/index']
  newTripTemplate: JST['trips/new_trip']
  events:
    'click button#new-trip': 'newTrip'
    'submit': 'ajaxSubmit'

  render: ->
    tbody = @$el.html(@template).find('tbody')
    @collection.each (model)=>
      view = new Money.Views.Trip model: model
      if model.get("countries").length > 0
        countries = new Money.Collections.Countries model.get "countries" 
        cview = new Money.Views.CountriesInCell collection: countries
        cview = cview.render().el
      else
        cview = '<td></td>'
      $(view.render().el).appendTo(tbody).append cview

    @

  newTrip: ->
    @$('tbody').append @newTripTemplate


  ajaxSubmit: (e)->
    e.preventDefault()
    $.ajax
      type: 'POST',
      url: e.target.action,
      data: @$('form').serialize(),
      success: =>
        @collection.trigger 'updated'
        Backbone.history.navigate '/trips'

