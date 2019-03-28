# Load the Rails application.
require File.expand_path('../application', __FILE__)
# require_relative "./mail_settings"

ActionMailer::Base.smtp_settings = 
{
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  :user_name => ENV["EMAIL_USER"],
  :password => ENV["EMAIL_PASS"],
  authentication:       :plain,
  enable_starttls_auto: true
}

# Initialize the Rails application.
Rails.application.initialize!