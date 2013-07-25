post '/new_post' do
  if logged_in?
    erb :index
  else

  end

end
