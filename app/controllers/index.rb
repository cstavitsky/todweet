require 'json'
get '/auth/twitter/callback' do
  # probably you will need to create a user in the database too...
  p user_hash = env['omniauth.auth']['extra']['access_token'].params

  p token = user_hash[:oauth_token]
  p secret = user_hash[:oauth_token_secret]
  p screen_name = user_hash[:screen_name]
  p twitter_user_id = user_hash[:user_id].to_s

  # find or create
  user = User.find_or_initialize_by(twitter_user_id: twitter_user_id)
  user.assign_attributes(screen_name: screen_name, oauth_token: token, oauth_token_secret: secret)
  user.save

  session[:user_id] = user.id
  session[:uid] = env['omniauth.auth']['uid']
  # this is the main endpoint to your application
  redirect to('/')
end

get '/auth/failure' do
  # omniauth redirects to /auth/failure when it encounters a problem
  # so you can implement this as you please
end

get '/logout' do
  session.delete(:user_id)
  redirect to '/'
end

get '/' do
  if current_user
    erb :'show'
  else
    erb :'index'
  end
end
