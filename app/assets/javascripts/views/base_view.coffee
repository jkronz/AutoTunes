class App.Views.BaseView extends Backbone.View
  onClose: =>
    @undelegateEvents()
    @remove()