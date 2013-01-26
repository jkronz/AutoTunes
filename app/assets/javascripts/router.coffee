class App.Router extends Backbone.Router
  routes:
    '': 'home'
    'djs/create': 'createDj'
    'djs/:id': 'showDj'
    'djs/:id/host': 'reloadHostPage'

  home: =>
    dust.render 'home', {}, (err, out) =>
      $("#application").html(out)

  createDj: =>
    @closeView()
    createDjView = new App.Views.Dj.Create()
    @showView(createDjView)
    @navigate('djs/create')

  hostDj: (dj) =>
    @closeView()
    hostDjView = new App.Views.Dj.Host({model: dj})
    @showView(hostDjView)
    @navigate("djs/#{dj.get('id')}/host")

  reloadHostPage: (id) =>
    dj = new App.Models.Dj({id: id})
    dj.fetch
      success: =>
        @hostDj(dj)

  showDj: (id) =>
    @closeView()
    dj = new App.Models.Dj({id: id})
    showDjView = new App.Views.Dj.Show({model: dj})
    @showView(createDjView)
    @navigate("djs/#{id}")

  ##
  # Some Utility Methods below, not actual routes.
  ##

  ##
  # Clear old view/event listeners
  ##
  closeView: =>
    if @currentView?
      if @currentView.onClose? then @currentView.onClose()
      delete @currentView

  ##
  # Load the new view into @currentView
  # and initialize the navigation menu if necessary.
  ##
  showView: (newView) =>
    @currentView = newView