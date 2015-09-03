get '/users' do
  @user = User.find_by(params[:user])
  erb :'show'
end
