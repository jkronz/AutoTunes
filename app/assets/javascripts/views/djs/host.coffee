class App.Views.Dj.Host extends App.Views.BaseView

  initialize: (options) =>
    @dj = options.model
    @dj.on 'change', @render
    @trackSearch = new App.Views.Tracks.TrackSearch(dj: @dj)
    @render()

  render: =>
    dust.render 'djs/host', @dj.toJSON(), (err, out) =>
      @$el.html(out)
      @nextTrack = @dj.currentTrack
      $("#application").html(@el)
      @$(".request-window").html(@trackSearch.render().el)
      @play()

  play: =>
    @currentTrack = @nextTrack
    if @currentTimeout?
      clearTimeout(@currentTimeout)
      delete @currentTimeout
    dust.render 'djs/player', @currentTrack.toJSON(), (err, out) =>
      @$(".now-playing").html(out)
    @currentTimeout = setTimeout(@next, @currentTrack.get('length'))
    @queueNextTrack()

  queueNextTrack: =>
    @trackLoaded = false
    @nextTrack = new App.Models.Track({dj_id: @dj.get('id')})
    @nextTrack.save {},
      wait: true
      success: @loadTrack

  loadTrack: =>
    dust.render 'djs/next', @nextTrack.toJSON(), (err, out) =>
      @$(".up-next").html(out)
    @trackLoaded = true

  next: =>
    @$(".up-next").empty()
    if @trackLoaded
      @play()
    else
      @nextTrack.on 'sync', =>
        @play()

  onClose: =>
    @trackSearch.onClose()
    @undelegateEvents()
    @remove()