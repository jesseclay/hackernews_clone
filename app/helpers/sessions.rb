helpers do

  def start_session(user)
    session[:id] = user.id
  end

  def logged_in?
    p "LOGGED IN CALLED!"
    p !(session[:id].nil?)
    !(session[:id].nil?)
  end

  def current_user
    @current_user||= User.find_by_id(session[:id])
  end

end

