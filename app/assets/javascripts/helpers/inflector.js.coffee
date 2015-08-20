class App.Helpers.Inflector

  constructor: ->

  @constantize: (name) ->
    name.split('.').reduce (prev, curr) ->
      return window[prev][curr] if typeof prev == 'string'
      prev[curr]
