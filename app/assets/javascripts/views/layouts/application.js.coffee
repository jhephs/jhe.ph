class App.Views.Layouts.Application extends Backbone.View

  el: 'body'

  render: ->
    @$('header').html(JST['application/header']())
