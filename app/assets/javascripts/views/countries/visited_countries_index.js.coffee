class Money.Views.VisitedCountriesIndex extends Backbone.View
  template: JST['countries/visited_sidebar']
  each_template: JST['countries/visited_sidebar_item']
  className: "well"
  id: "sidebar-nav"

  render: ->
    @$el.html(@template)
      .find('ul')
      .append @collection.map(@each_template).join('')
    @
  
