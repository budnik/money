class Money.Views.CurrenciesIndex extends Backbone.View
  className: 'span4 offset1'
  id: 'main-content'
  template: JST['currencies/index']

  render: ->
    tbody = @$el.html(@template).find('tbody')
    @collection.each (model)=>
      view = new Money.Views.CurrencyRow model: model
      tbody.append view.render().el
    @
