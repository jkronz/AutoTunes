class App.Views.ErrorView extends App.Views.BaseView
  el: "#flash-container"

  error: (model, error) =>
    dust.render 'error', {message: "There was a problem processing your request"}, (err, out) =>
      @$el.html(out)
      @$("#message-wrapper").removeClass('alert-info alert-error alert-success')
      @$("#message-wrapper").addClass('alert-error')

  info: (model, error) =>
    dust.render 'error', {message: "There was a problem processing your request"}, (err, out) =>
      @$el.html(out)
      @$("#message-wrapper").removeClass('alert-info alert-error alert-success')
      @$("#message-wrapper").addClass('alert-info')

  success: (model, error) =>
    dust.render 'error', {message: "There was a problem processing your request"}, (err, out) =>
      @$el.html(out)
      @$("#message-wrapper").removeClass('alert-info alert-error alert-success')
      @$("#message-wrapper").addClass('alert-success')