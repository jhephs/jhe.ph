##
# Helpers declared here are accessible from asset files with an ERB preprocessor.
##
module ApplicationHelper
  def protect_against_forgery?
    true
  end
end
