class App.Views.ErrorView extends App.Views.BaseView
  el: "#flash-container"

  error: (model, error) =>
    dust.render 'error', {message: "There was a problem processing your request"}, (err, out) =>
      @$el.html(out)
      @$el.show()
      @$("#message-wrapper").removeClass('alert-info alert-error alert-success')
      @$("#message-wrapper").addClass('alert-error')
      setTimeout(@clearMessage, 5000)

  info: (model, error) =>
    dust.render 'error', {message: "There was a problem processing your request"}, (err, out) =>
      @$el.html(out)
      @$el.show()
      @$("#message-wrapper").removeClass('alert-info alert-error alert-success')
      @$("#message-wrapper").addClass('alert-info')
      setTimeout(@clearMessage, 5000)

  success: (message) =>
    dust.render 'error', {message: message}, (err, out) =>
      @$el.html(out)
      @$el.show()
      @$("#message-wrapper").removeClass('alert-info alert-error alert-success')
      @$("#message-wrapper").addClass('alert-success')
      setTimeout(@clearMessage, 5000)

  clearMessage: =>
    @$el.fadeOut()
