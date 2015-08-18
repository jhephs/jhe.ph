_.extend App.Helpers,

  to_object: (name) ->
    name.split('.').reduce (prev, curr) ->
      return window[prev][curr] if typeof prev == 'string'
      prev[curr]
