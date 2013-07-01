class Money.Views.CurrencyRow extends Backbone.View
  className: 'currency'
  tagName: 'tr'
  template: JST['currencies/row']
  events:
    'click': 'showCountries'
    

  render: ->
    @$el.html @template @model
    @

  showCountries: (e)->
    countries = new Money.Collections.Countries @model.get("countries")
    countries.visitedIds = @model.get 'visited_countries_ids'
    countries.currency_code = @model.get 'code'
    view = new Money.Views.CountriesIndex collection: countries
    $('#sidebar-nav').html view.render().el
