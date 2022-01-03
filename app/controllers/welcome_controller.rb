# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'
include SendGrid

class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    send_email
  end
  
  private

  def send_email
    to = Email.new(email: 'test@example.com')
    subject = 'Sending with SendGrid is Fun'
    content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    mail = Mail.new(from, to, subject, content)

    sg = SendGrid::API.new(api_key: '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')
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end
end
