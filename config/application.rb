require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module I18nRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    I18n.locale
    I18n.load_path
    I18n.backend
    I18n.exception_handler
    I18n.enforce_available_locales
    # config.i18n.load_path += DIR[Rails.root.join('custom_locales', '*.{yml}')]
    config.i18n.available_locales = [:en, :ru]
    config.i18n.default_locale = :en
  end
end
