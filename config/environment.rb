# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Locumboard::Application.initialize!

Locumboard::Application.configure do
  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.raise_delivery_errors = true

end
