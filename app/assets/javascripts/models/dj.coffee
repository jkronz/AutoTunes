class App.Models.Dj extends Backbone.Model

  url: =>
    if @isNew()
      "/djs"
    else
      "/djs/#{@get('id')}"

  parse: (attributes) =>
    @currentTrack = new App.Models.Track(attributes.current_track)
    attributes
