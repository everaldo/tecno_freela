require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require 'carrierwave'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TecnoFreela
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/**/*.{rb,yml}"]
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.assets.paths << Rails.root.join("vendor", "assets", "fonts")
    I18n.enforce_available_locales = false
  end
end
