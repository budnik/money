class Money.Routers.Currencies extends Backbone.Router
  routes:
    'currencies': 'index'

  index: ->
    collection = new Money.Collections.Currencies
    collection.fetch().success ->
      view = new Money.Views.CurrenciesIndex collection: collection
      $('#main-content').replaceWith view.render().el
      v_ctr_cnt = _.foldl collection.map((m)-> m.get('visited_countries_count')||0), (a,b)->a+b
      ctr_cnt = _.foldl collection.map((m)-> m.get('countries_count')||0), (a,b)->a+b
      $('#main-content th').html("Visited: #{v_ctr_cnt}/#{ctr_cnt}")
      placeholder = new Money.Views.Placeholder
      $('#sidebar-nav').replaceWith placeholder.render().el
