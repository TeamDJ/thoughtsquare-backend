# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_thoughtsquare-backend_session',
  :secret      => 'ea9a843c20510812b5a363a8163a326dc3155d6cb97ae3ac68a83dc1e7a6e103022120521bfedb848cdca18261fac327914555eefadd05ded5b32718613b595e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
