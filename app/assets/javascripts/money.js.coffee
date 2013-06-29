window.Money =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @ctr_router = new Money.Routers.Countries 
    Backbone.history.start
      pushState: true


$(document).ready ->
  Money.initialize()
  Money.ctr_router.navigate '/countries'
