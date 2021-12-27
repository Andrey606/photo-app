# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


### setup sendgrid 

echo "export SENDGRID_API_KEY='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'" > sendgrid.env
echo "sendgrid.env" >> .gitignore
source ./sendgrid.env



# 2

gem 'sendgrid-ruby'

bundler
or
gem install sendgrid-ruby

# 3 send your email

# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'test@example.com')
to = Email.new(email: 'test@example.com')
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers


--------------------
heroku config:set SENDGRID_USERNAME=apikey
heroku config:set SENDGRID_API_KEY=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
