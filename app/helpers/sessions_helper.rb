module SessionsHelper

  def current_user
    @current_user ||= User.find_by_session_token(session[:token])
  end

  def logged_in?
    current_user
  end

  def log_in_user!
    current_user.reset_session_token!
    session[:token] = current_user.session_token
  end

  def sign_in(user)
    @current_user = user
    session[:token] = user.session_token
  end

  def sign_out_current_user
    current_user.reset_session_token!
    session[:token] = nil
  end


end
