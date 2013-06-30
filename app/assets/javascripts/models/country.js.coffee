class Money.Models.Country extends Backbone.Model
  get: (attr)->
    value = @[attr]?() || Backbone.Model.prototype.get.call(this, attr)
  
  visited: ->
    _.contains @collection.visitedIds, @get 'id'
