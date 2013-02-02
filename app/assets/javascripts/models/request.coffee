class App.Models.Request extends Backbone.Model
  url: =>
    "/djs/#{@djId}/request_track"

  initialize: (options) =>
    @djId = options.dj.get('id')
    @on 'sync', =>
      App.app.errorView.success("Your request for #{@get('name')} has been accepted.")
    @on 'error', App.app.errorView.error