class Money.Routers.Currencies extends Backbone.Router
  routes:
    'currencies': 'index'

  index: ->
    collection = new Money.Collections.Currencies
    collection.fetch().success ->
      view = new Money.Views.CurrenciesIndex collection: collection
      $('#main-content').replaceWith view.render().el
      placeholder = new Money.Views.Placeholder
      $('#sidebar-nav').replaceWith placeholder.render().el

