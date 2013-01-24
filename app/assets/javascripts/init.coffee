unless window.console?
  window.console = {}
  window.console.log = () ->
    #nothin.

# Initialize global QuantDesk namespace.
window.App = _.extend {},
    Collections: {}
    Models: {}
    Utils:
        EventManager: _.extend Backbone.Events
    Views:
        Dj: {}