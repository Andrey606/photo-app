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
    from = SendGrid::Email.new(email: 'andreykuluev96@gmail.com')
    to = SendGrid::Email.new(email: 'akuluev@ukr.net')
    subject = 'Sending with Twilio SendGrid is no Fun'
    content = SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: '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')
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    # puts response.parsed_body
    puts response.headers
  end
end
