class Money.Models.Currency extends Backbone.Model
  get: (attr)->
    value = @[attr]?() || Backbone.Model.prototype.get.call(this, attr)

  countries_count: ->
    @get("countries").length

  visited_countries_count: ->
    _.filter(@get("countries"), (c)-> c.visited).length
