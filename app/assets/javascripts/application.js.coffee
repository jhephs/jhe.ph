#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
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
    # Instantiate router depending on which controller was used
    App.router = new(App.Helpers.to_object(App.router_name))

    # Render layout
    (App.layout = new(App.Helpers.to_object(App.layout_name))).render()

    Backbone.history.start pushState: true

_.extend App, Backbone.Events

$ ->
  App.initialize()
