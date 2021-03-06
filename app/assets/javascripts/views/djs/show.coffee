class App.Views.Dj.Show extends App.Views.BaseView

  initialize: (options) =>
    @dj = options.model
    @socketDispatcher = new WebSocketRails("#{window.application_root}/websocket")
    @channel = @socketDispatcher.subscribe("DJ:#{@dj.get('id')}")
    @channel.bind 'current_track', @updateCurrentTrack
    @channel.bind 'next_track', @updateNextTrack
    @trackSearch = new App.Views.Tracks.TrackSearch(dj: @dj)
    @render()

  render: =>
    dust.render 'djs/show', @dj.toJSON(), (err, out) =>
      @$el.html(out)
      $("#application").html(@el)
      @$(".request-window").html(@trackSearch.render().el)

  updateCurrentTrack: (track) =>
    dust.render 'djs/player', track, (err, out) =>
      @$(".now-playing").html(out)

  updateNextTrack: (track) =>
    dust.render 'djs/next', track, (err, out) =>
      @$(".up-next").html(out)