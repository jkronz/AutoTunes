class App.Models.Track extends Backbone.Model
  url: =>
    if @isNew()
      "/tracks"
    else
      "/tracks/#{@get('id')}"

