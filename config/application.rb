require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BackendLanguage
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # config link API
    config.autoload_paths << Rails.root.join("app/api/entities/v1/test")
    config.paths.add File.join("app", "api"), glob: File.join("**", "*.rb")
    config.autoload_paths += Dir[Rails.root.join("app", "api", "*")]
  end
end
