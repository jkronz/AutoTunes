class App.Views.Tracks.TrackSearchResult extends Backbone.View
  tagName: 'li'

  events:
    'click a': 'requestTrack'

  initialize: (options) =>
    @track = options.model
    @dj = options.dj

  render: =>
    dust.render 'tracks/trackSearchResult', @track.toJSON(), (err, out) =>
      @$el.html(out)
    return this

  requestTrack: =>
    req = new App.Models.Request
      dj: @dj
      artist: @track.get('artist')
      name: @track.get('name')
      uri: @track.get('uri')
      length: @track.get('length')
    req.save()
    return false

  onClose: =>
    @undelegateEvents()
    @remove()