class App.Routers.Users extends Backbone.Router

  routes:
    '': 'show'
    'profile': 'show'
    'users': 'index'
    'register': 'new'

  index: ->
    alert('Users index')

  show: ->
    alert('Users show')

  new: ->
    alert('Users new')
