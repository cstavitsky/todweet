require 'json'

get '/auth/twitter/callback' do
  # probably you will need to create a user in the database too...
  user_hash = env['omniauth.auth']['extra']['access_token'].params

  p token = user_hash[:oauth_token]
  p secret = user_hash[:oauth_token_secret]
  p screen_name = user_hash[:screen_name]
  p twitter_user_id = user_hash[:user_id]

  session[:uid] = env['omniauth.auth']['uid']
  # this is the main endpoint to your application
  redirect to('/')
end

get '/auth/failure' do
  # omniauth redirects to /auth/failure when it encounters a problem
  # so you can implement this as you please
end

get '/' do
  # p env['omniauth.auth']
  'Hello omniauth-twitter!'
end
