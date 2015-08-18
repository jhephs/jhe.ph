class ApplicationResponder < ActionController::Responder
  # include Responders::FlashResponder
  include Responders::HttpCacheResponder

  # Redirects resources to the collection path (index action) instead
  # of the resource path (show action) for POST/PUT/DELETE requests.
  # include Responders::CollectionResponder

  # SEE: http://edgeapi.rubyonrails.org/classes/ActionController/Responder.html
  # Override response when HTML request and render the layout instead.
  def to_html
    render(
      file: 'layouts/application',
      locals: {
        json: @controller._render_with_renderer_json(@resource, @options),
        router: "App.Routers.#{@controller.controller_name.camelize}"
      }
    )
  end
end
