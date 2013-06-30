class Money.Views.Placeholder extends Backbone.View
  className: 'affix'
  id: 'sidebar-nav'
  template: JST['currencies/placeholder']

  render: ->
    @$el.html @template
    @
 
