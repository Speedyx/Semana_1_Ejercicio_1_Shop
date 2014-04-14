class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Para proteger las contraseñas por internet forzamos ssl
  #pero si lo activo me ignora el puerto, y me sale apache
  #force_ssl

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

#Sin la línea de abajo no puedo editar los usuarios / ordenes
 def default_url_options(options={})
   {:locale => I18n.locale}
 end

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def check_user_logged
    redirect_to log_in_path, notice: 'Log in first, please!' unless current_user
  end

  def check_user_logged_login
    if current_user
      redirect_to user_path(id: :user_id)
    end
  end

  helper_method :current_user

end
