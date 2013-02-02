class App.Collections.TrackSearchResults extends Backbone.Collection

  model: App.Models.Track

  url: =>
    "/tracks/search?search=#{@search}"

  search: (search) =>
    @search = search
    @fetch()