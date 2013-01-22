class PartyDj.Views.BaseView extends Backbone.View
  onClose: =>
    @undelegateEvents()
    @remove()