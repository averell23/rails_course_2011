# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_movie_thing_session',
  :secret      => '56494773a0bcd0323c3c6b76f32df4ffbe36a902678f91292d0ba2637ab0901c2a9b5b0e4dc9fedb262b7b315e5337394879999ce334f7894a60f13cc623c817'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
