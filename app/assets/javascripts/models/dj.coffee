class App.Models.Dj extends Backbone.Model

  url: =>
    if @isNew()
      "/dj/#{@get('id')}"
    else
      "/dj"

