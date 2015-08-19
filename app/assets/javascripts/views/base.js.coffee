class App.View extends Backbone.View

  # Shows the passed view and properly handles cleaning up unnecessary views
  @show: (view) ->
    App.view.close() if App.view

    App.view = view

    App.layout
