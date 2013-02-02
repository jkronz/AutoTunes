class App.Views.Tracks.TrackSearch extends Backbone.View
  events:
    'submit form': 'search'

  initialize: (options) =>
    @dj = options.dj
    @dispatch = App.app.dispatch
    @dispatch.on 'dj:trackAdded', @closeResultViews
    @searchResults = new App.Collections.TrackSearchResults()
    @searchResults.on 'reset', @renderResults
    @resultViews = []

  render: =>
    dust.render 'tracks/trackSearch', {}, (err, out) =>
      @$el.html(out)
    return this

  search: =>
    @closeResultViews()
    @searchResults.search @$("input").val()
    @$("input").val("")
    return false

  renderResults: =>
    @closeResultViews()
    @searchResults.each @renderResult

  renderResult: (track) =>
    resultView = new App.Views.Tracks.TrackSearchResult({model: track, dj: @dj})
    @$('.search-results').append(resultView.render().el)

  closeResultViews: =>
    _.each @resultViews, (vw) ->
      vw.onClose()
    @resultViews = []