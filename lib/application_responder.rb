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
        layout_name: "App.Views.Layouts.#{(layout_name || @controller.send(:current_layout)).camelize}",
        router_name: "App.Routers.#{@controller.controller_name.camelize}"
      }
    )
  end

  # SEE: http://edgeapi.rubyonrails.org/classes/ActionController/Responder.html
  # Override response for XML or JSON and include layout in meta
  def display(resource, given_options = {})
    given_options[:meta] ||= {}
    given_options[:meta].reverse_merge!(layout: layout_name)

    super
  end

  private

  # Set layout to `application` if it is `nil`
  def layout_name
    (@options[:layout].is_a?(Proc) ? @options[:layout].call : @options[:layout]).try(:split, '/').try :last
  end
end
