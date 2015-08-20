class App.Views.Layouts.Application extends App.View

  el: '.layout'
  template: JST['layouts/application']

  data: {
    navs: [
      { icon: 'fa-home', href: '/', name: 'Home' },
      { icon: 'fa-folder-open-o', href: '/portfolio', name: 'Portfolio' },
      { icon: 'fa-info', href: '/about', name: 'About' },
      { icon: 'fa-envelope-o', href: '/contact', name: 'Contact' }
    ]
  }

  render: ->
    @$el.html(@template(navs: @data.navs))
    @
