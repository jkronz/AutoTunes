class App.Models.Dj extends Backbone.Model

  url: =>
    if @isNew()
      "/djs"
    else
      "/djs/#{@get('id')}"


  fetchNextTrack: =>
    @nextTrack = new App.Models.Track
      dj_id: @get('id')
    @nextTrack.fetch()


