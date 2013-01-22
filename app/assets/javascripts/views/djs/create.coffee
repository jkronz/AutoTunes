class PartyDj.Views.Dj.Create extends PartyDj.Views.BaseView
  events:
    "submit form": "createDj"

  initialize: =>

  render: =>
    dust.render 'djs/create', {}, (err, out) =>
      @$el.html(out)

  createDj: =>
    dj = new PartyDj.Models.Dj
      seed: @$("#seed")
    dj.save
      success: (model, response) =>
        PartyDj.app.router.trigger("djs/#{model.get('id')}", {trigger: true})
      error: PartyDj.app.errorView.error