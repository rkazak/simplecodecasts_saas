# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# enable mail thur heroku's sendgrid.
ActionMailer::Base.smtp_settings = {
   :address => 'smtp.sendgrid.net',
   :port => 587,
   :authentication => :plain,
   :user_name => ENV['SENDGRID_USERNAME'],
   :password => ENV['SENDGRID_PASSWORD'],
   :domain => 'herkou.com',
   :enable_startstls_auto => true 
}

