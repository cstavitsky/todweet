post '/tasks' do
  @task = Task.new(params[:task])
  @user = current_user
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
