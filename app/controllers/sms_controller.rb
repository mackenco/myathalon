class SmsController < ApplicationController
  def receive
    @twiml = Twilio::TwiML::Response.new do |r|
        r.Message "Hey Monkey. Thanks for the message!"
      end
  end
end
