class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Para proteger las contraseñas por internet forzamos ssl
  #pero si lo activo me ignora el puerto, y me sale apache
  #force_ssl


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def check_user_logged
    redirect_to log_in_path, notice: 'Log in first, please!' unless current_user
  end

  def check_user_logged_login
    redirect_to "#{users_path}/#{current_user.id}" unless !current_user
  end

  helper_method :current_user

end
