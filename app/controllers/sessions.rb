get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:id] = @user.id
  else
    @sessions.errors.full_messages
    redirect '/sessions/new'
  end
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/sessions/new'
end