class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  concerning :Helpers do
    included do
      helper_method :current_account
    end

    private

    def current_account
      @current_account ||= Account.find_by_username('jhephs')
    end
  end

  concerning :Responses do
    included do
      require 'application_responder'

      # See `lib/application_responder.rb`
      self.responder = ApplicationResponder

      # Respond to HTML and JSON requests only
      respond_to :html, :json

      # Resolve default template if template is missing
      append_view_path ApplicationResolver.new
    end
  end
end
