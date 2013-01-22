class PartyDj.Application

  constructor: ->
    @dispatch = _.extend Backbone.Events
    @router = new PartyDj.Router()

  load: ->
    Backbone.history.start()
