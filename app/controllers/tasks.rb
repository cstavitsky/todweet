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

put '/tasks/:id/edit' do
  @task = Task.find_by_id(params[:id])
  @task.completed = true
  if request.xhr?
    if @task.save
      status 200
    else
      status 422
    end
  else
    erb :"/show"
  end

end

