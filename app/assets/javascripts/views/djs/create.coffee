class App.Views.Dj.Create extends App.Views.BaseView
  events:
    "submit form": "createDj"

  initialize: =>
    @render()

  render: =>
    dust.render 'djs/create', {}, (err, out) =>
      @$el.html(out)
      $("#application").html(@el)

  createDj: =>
    dj = new App.Models.Dj
      seed: @$("#seed")
    dj.save
      success: (model, response) =>
        App.app.router.trigger("djs/#{model.get('id')}", {trigger: true})
      error: App.app.errorView.error
    return false