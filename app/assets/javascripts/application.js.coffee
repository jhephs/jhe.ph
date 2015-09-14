#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require underscore
#= require backbone
#= require_self
#= require_tree ./templates
#= require_tree ./helpers
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers

_.extend App,
  Helpers: {}
  Models: {}
  Collections: {}
  Views:
    Layouts: {}
  Routers: {}
  initialize: ->
    # Render layout
    App.layout = new(App.Helpers.Inflector.constantize(App.layout_name))
    App.layout.render()

    # Instantiate router depending on which controller was used
    App.router = new(App.Helpers.Inflector.constantize(App.router_name))

    Backbone.history.start pushState: true

_.extend App, Backbone.Events

$ ->
  App.initialize()
