class App.Routers.Posts extends Backbone.Router

  routes:
    '': 'index',
    'posts/:slug': 'show'

  index: ->
    alert('Posts index')

  show: ->
    alert('Posts show')
