window.Money =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @ctr_router = new Money.Routers.Countries 
    @crr_router = new Money.Routers.Currencies 
    @trp_router = new Money.Routers.Trips 
    Backbone.history.start
      pushState: true


$(document).ready ->
  Money.initialize()

  $(document).on "click", "a", (event)=>
    href = $(event.currentTarget).attr('href')
    return if $(event.currentTarget).attr('data-dismiss')
    if !event.altKey && !event.ctrlKey && !event.metaKey && !event.shiftKey
      event.preventDefault()
      url = href?.replace('\#\!\/','')
      Backbone.history.navigate url, trigger: true
    false
