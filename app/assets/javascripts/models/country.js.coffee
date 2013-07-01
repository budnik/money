class Money.Models.Country extends Backbone.Model
  get: (attr)->
    value = @[attr]?() || Backbone.Model.prototype.get.call(this, attr)
