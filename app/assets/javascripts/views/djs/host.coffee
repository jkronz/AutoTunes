class App.Views.Dj.Host extends App.Views.BaseView

  initialize: (options) =>
    @dj = options.model
    @dj.on 'change', @render
    @render()

  render: =>
    dust.render 'djs/host', @dj.toJSON(), (err, out) =>
      @$el.html(out)
      @nextTrack = @dj.currentTrack
      $("#application").html(@el)
      @play()

  play: =>
    @currentTrack = @nextTrack
    if @currentTimeout?
      clearTimeout(@currentTimeout)
      delete @currentTimeout
    console.log(['@currentTrack.get("uri")', @currentTrack.get('uri')])
    window.location.href = @currentTrack.get('uri')
    @currentTimeout = setTimeout(@currentTrack.get('length') * 1000, @next)
    @queueNextTrack()

  queueNextTrack: =>
    @trackLoaded = false
    @nextTrack = new App.Models.Track({dj_id: @dj.get('id')})
    @nextTrack.save {},
      wait: true
      success: @loadTrack

  loadTrack: =>
    @trackLoaded = true

  next: =>
    if @trackLoaded
      @play
    else
      @nextTrack.on 'sync', =>
        @play