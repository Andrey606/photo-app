# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :user_name => 'apikey',
  :password => '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',
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}