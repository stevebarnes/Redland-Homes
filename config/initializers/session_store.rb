# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RedlandHomes_session',
  :secret      => 'd1fb0c668e69d9fe0c09a1840708b282b72d0b2da386f2e270d836873004e861e3847c8e98cbd75370a09859d185639e899978e79e7b0105e3c100e7b3878088'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
