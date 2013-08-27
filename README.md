twilio-recording-manager
========================

A simple web app to manage your Twilio voice recordings.

# About

This is an almost comically simple web app to view and listen to your Twilio voice recordings. I quite literally built this and then almost immediately figured out the damn thing's pretty much already in Twilio's admin console.

Oh well.

# Features

Right now you can view your recordings (with links to MP3s) and see key data about them.

# Upcoming Features

I'd like to implement a dead-simple AJAX-y delete interface to make cleaning up recordings a snap, and would honestly make this more useful than the Twilio admin interface. Check out GitHub Issues to discuss and/or contribute.

# Running the App

To run the app, you'll need Ruby and RubyGems installed on your system.

Then, install the necessary dependencies from the Gemfile with Bundler:

`bundle install`

Next, set the environment variables for your Twilio account (I advise storing in your environment profile/rc for convenience):

`export TWILIO_SID=myTwilioSIDGoesHere`

`export TWILIO_AUTH=myTwilioAuthTokenGoesHere`

Lastly, run the Sinatra app!

`ruby twilio_recordings_manager.rb`

# Copyright and License

Copyright Dave Guarino 2013 - GNU Public License v3 ("v. free") - No liability or warranties!

