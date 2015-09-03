get '/users' do
  @user = User.find_by(params[:user])
  p params
  erb :'show'
end
