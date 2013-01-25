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
    dj = new App.Models.Dj()
    dj.save {seed: @$("#seed").val()},
      success: (model, response) =>
        console.log(['model', model])
        console.log(['response', response])
        console.log(['App.app.router', App.app.router])
        App.app.router.navigate("djs/#{model.get('id')}/host", {trigger: true})
      error: (model, response) =>
        console.log(['error model', model])
        console.log(['error response', response])
        App.app.errorView.error
    return false