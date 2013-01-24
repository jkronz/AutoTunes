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
        App.app.router.trigger("djs/#{model.get('id')}/host", {trigger: true})
      error: App.app.errorView.error
    return false