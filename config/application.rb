require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatBizz
  class Application < Rails::Application
    config.action_mailer.perform_deliveries = true
    config.active_record.raise_in_transactional_callbacks = true

    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
         address: "smtp.gmail.com",
         port: 587,
         domain: 'gmail.com',
         authentication: :login,
         enable_starttls_auto: true,
         user_name: "chatbizz007@gmail.com",
         password: "12345678**"
    }
  end
end
