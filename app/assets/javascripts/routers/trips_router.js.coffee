class Money.Routers.Trips extends Backbone.Router
  routes:
    'trips': 'index'

  index: ->
    collection = new Money.Collections.Trips
    collection.fetch().success ->
      view = new Money.Views.TripsIndex collection: collection
      $('#main-content').replaceWith view.render().el
      $('#sidebar-nav').replaceWith ''
