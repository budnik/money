class Money.Views.CurrenciesIndex extends Backbone.View
  className: 'span4 offset1'
  id: 'main-content'
  template: JST['currencies/index']
  events:
    'click a': 'removeVisited'

  render: ->
    tbody = @$el.html(@template).find('tbody')
    @collection.each (model)=>
      view = new Money.Views.CurrencyRow model: model
      tbody.append view.render().el
    @

  removeVisited: (e)->
    console.log e,@
    e.preventDefault()
    @$('.visited-countries').remove()
 
