require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module Pusher
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec
      g.view_specs false
      g.helper_specs false
    end

    config.time_zone = 'Stockholm'
    config.i18n.default_locale = :sv
  end
end
