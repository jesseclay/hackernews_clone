get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by_username(params[:username])
  if user && user.password_hash == params[:password_hash]
    start_session(user)
    redirect '/'
  else
    erb :login
  end

end

post '/create_user' do
  if user = User.create(params)
    start_session(user)
    redirect '/'
  else
    erb :login
  end

end

get '/logout' do 
  sessions.clear
  redirect '/'
end
