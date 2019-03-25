# Load the Rails application.
require File.expand_path('../application', __FILE__)
require_relative "./mail_settings"

ActionMailer::Base.smtp_settings = getMailSettings

# Initialize the Rails application.
Rails.application.initialize!