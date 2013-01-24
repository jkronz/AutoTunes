class App.Application

  constructor: ->
    @dispatch = _.extend Backbone.Events
    @errorView = new App.Views.ErrorView()
    @router = new App.Router()

  load: ->
    router = @router
    $(document).on 'click', 'a:not([data-bypass])', (evt) ->
      href = $(this).attr('href')
      protocol = this.protocol + '//'

      if href.slice(protocol.length) != protocol
        evt.preventDefault()
        router.navigate(href, true)
    route = Backbone.history.start({pushState: true})
    console.log(['route', route])
