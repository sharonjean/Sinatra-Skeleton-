helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def authenticate_user
    current_user
  end

end