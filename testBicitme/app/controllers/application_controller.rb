class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception
  private
  def current_user
    Usuario.where(id: session[:usuarios_id]).first
  end
  def tipo_user
  	Usuario.where(id: session[:usuarios_tipo])
  end
  helper_method :current_user
end
