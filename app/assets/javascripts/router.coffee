class PartyDj.Router extends Backbone.Router
  routes:
    'dj/create': 'createDj'
    'dj/:id': 'showDj'
    'dj/:id/host': 'reloadHostPage'

  createDj: =>
    @closeView()
    createDjView = new PartyDj.Views.Dj.Create()
    @showView(createDjView)
    @navigate('dj/create')

  hostDj: (dj) =>
    @closeView()
    hostDjView = new PartyDj.Views.Dj.Host({model: dj})
    @showView(createDjView)
    @navigate("dj/#{id}/host")

  reloadHostPage: (id) =>
    dj = new PartyDj.Models.Dj({id: id})
    @hostDj(dj)

  showDj: (id) =>
    @closeView()
    dj = new PartyDj.Models.Dj({id: id})
    showDjView = new PartyDj.Views.Dj.Show({model: dj})
    @showView(createDjView)
    @navigate("dj/#{id}")

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