class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  concerning :Helpers do
    included do
      helper_method :current_layout, :current_user
    end

    private

    def current_user
      @current_user ||= User.first
    end

    def current_layout
      @current_layout ||= send(:_layout).inspect.split('/').last.split('.').first
    end
  end

  concerning :Responses do
    included do
      require 'application_responder'

      # See `lib/application_responder.rb`
      self.responder = ApplicationResponder

      # Respond to HTML and JSON requests only
      respond_to :html, :json
    end
  end
end
