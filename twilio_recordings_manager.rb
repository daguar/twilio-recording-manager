require 'twilio-ruby'
require 'sinatra'

# Development
require 'pry'
require 'vcr'

ACCOUNT_SID = ENV['TWILIO_SID']
AUTH_TOKEN = ENV['TWILIO_AUTH']
CLIENT = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN

get '/list' do
  begin
    @recordings_list = CLIENT.account.recordings.list
    @rendered_html = "<table border='2'><tr><td>Call SID</td><td>Length</td></tr>"
    @recordings_list.each do |recording|
      @rendered_html += "<tr><td><a href='#{recording.mp3}'>#{recording.call_sid}</a></td><td>#{recording.duration}s</td><tr>"
    end
    @rendered_html += "</table>"
    @rendered_html
  rescue
    binding.pry
  end
end

