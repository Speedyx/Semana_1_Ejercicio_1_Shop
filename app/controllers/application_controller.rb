class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Para proteger las contraseñas por internet forzamos ssl
  #pero si lo activo me ignora el puerto, y me sale apache
  #force_ssl

  helper_method :current_user


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
