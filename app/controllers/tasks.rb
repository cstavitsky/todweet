post '/tasks' do
  @task = Task.new(params[:task])
  @user = User.find_by(twitter_user_id: session[:tuid])
  @user.tasks << @task
  if @task.save
    redirect '/'
  else
    erb :'/show'
  end
end

# delete '/tasks' do
#   @task = Task.find(params[:task])
#   @task.destroy!
#   redirect '/'
# end
