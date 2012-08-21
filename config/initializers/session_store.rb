# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testnested_session',
  :secret      => 'ec14605289a130460666744298efdae0fa1a9b0095d8b013ec2e26d1b6379a352c6f789c5fd7c6c3a4ec6624e075706084615788a5d0c13c12b7371e4e7a1359'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
