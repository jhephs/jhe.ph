# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# SEE: http://stackoverflow.com/questions/14284278/how-to-include-actionview-helpers-in-the-assets-pipeline
Rails.application.assets.context_class.class_eval do
  include ActionView::Helpers
  include ApplicationHelper
end
