Pusher
======

Admin gui to publish information to users via the  pubnub service

Variables that need to be set are:

 * PUBNUB_HOST = Alias for the pubnub host

 * PUBNUB_PUBLISH_KEY = The publish key need to push messages to pubnub.

 * PUBNUB_SUBSCRIBE_KEY = The key needed to subscribe to messages

 * HTTP_AUTH_USER = Username to use in basic http auth in stage or production environment
 * HTTP_AUTH_PASSWORD = Password to use in basic http auth in stage or production environment

in development the .env file is read at app startup by 00_setup_environment.rb
if a .username-env is found any parameters there override configuration found in .env 