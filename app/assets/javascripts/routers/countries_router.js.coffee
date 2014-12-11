class Money.Routers.Countries extends Backbone.Router
  routes:
    '': 'visided_countries'
    'countries': 'visided_countries'

  visided_countries: ->
    collection = new Money.Collections.VisitedCountries
    collection.fetch().success =>
      side_bar = new Money.Views.VisitedCountriesIndex
        collection: collection
      $('#sidebar-nav').attr("class",'').replaceWith(side_bar.render().el)
      $('#main-content').attr("class",'span9').html ""
      @globe collection.pluck "name"

  globe: (countries)->
    width = 1000
    height = 780
    projection = d3.geo.larrivee()
        .scale(150)
        .translate([width / 2, height / 2])
        .precision(.1);
    path = d3.geo.path().projection(projection)
    graticule = d3.geo.graticule()
    svg = d3.select("#main-content").append("svg").attr("width", width).attr("height", height)
    svg.append("defs").append("path").datum(type: "Sphere").attr("id", "sphere").attr "d", path
    svg.append("use").attr("class", "stroke").attr "xlink:href", "#sphere"
    svg.append("use").attr("class", "fill").attr "xlink:href", "#sphere"
    svg.append("path").datum(graticule).attr("class", "graticule").attr "d", path

    queue().defer(d3.json, "world-110m.json")
      .defer(d3.tsv, "world-country-names.tsv")
      .await (error, world, names)->
        svg.insert("path", ".graticule").datum(topojson.feature(world, world.objects.land)).attr("class", "land").attr "d", path
        svg.insert("path", ".graticule").datum(topojson.mesh(world, world.objects.countries, (a, b) ->
          a isnt b
        )).attr("class", "boundary").attr("d", path)
        visited_courtries_ids = (c.id for c in names when _.contains countries, c.name)
        world.objects.countries.geometries = world.objects.countries.geometries.filter (f)->
          _.contains visited_courtries_ids, f.id.toString()
        svg.insert("path", ".graticule").datum(topojson.feature(world, world.objects.countries)).attr("class", "cntr").attr "d", path


