class App.Views.Dj.Host extends App.Views.BaseView

  initialize: (options) =>
    @dj = options.model
    @dj.on 'change', @render
    @render()

  render: =>
    dust.render 'djs/host', @dj.toJSON(), (err, out) =>
      console.log(['out', out])
      console.log(['err', err])
      @$el.html(out)
      @nextTrack = @dj.seedTrack
      $("#application").html(@el)
      @play()

  play: =>
    if @nextTrack?
      @playing = true
      @currentTrack = @nextTrack
      if @currentTimeout?
        clearTimeout(@currentTimeout)
        delete @currentTimeout
      window.location.href = @currentTrack.get('uri')
      @currentTrackTimeout = setTimeout(@currentTrack.get('length') * 1000, @playNext)
      @queueNextTrack()




