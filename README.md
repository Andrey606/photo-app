### I use gmail mailer for sending emails
  config -> (production.rb, development.rb)

  # my mailer settings
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { :host => 'localhost:3000', protocol: 'http' }
  # SMTP settings for gmail
  config.action_mailer.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => 'andreykuluev96@gmail.com',
    :password             => 'chamolhweopwwsae', # in google settings created this password for phot-app
    :authentication       => "plain",
    :enable_starttls_auto => true
  }

### for payments we use stripe.com

### use dotenv gem for variables

### need to install for resizing images (gem mini_magick)
brew install imagemagick

### use aws services for storing images on production and s3 bucket
1) created IAM user
2) create S3 bucket
3) gave my user acces to s3 bucket

heroku config:set S3_ACCESS_KEY=AKIAYNV274XC27T22YOU
heroku config:set S3_SECRET_KEY=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
heroku config:set S3_BUCKET=andrews-photo-app-bucket