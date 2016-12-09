class SessionsController < ApplicationController
  def new
  end
  def create
    usuario = Usuario.find_by(:usuar_correo => params[:email])
    if usuario && Usuario.where(:usuar_contrasegna => params[:password]).first
      session[:usuarios_id] = usuario.id
      if usuario.usuar_tipo_cod == 'C'
        redirect_to vista_ciclista_path
      else
        redirect_to vista_taller_path
      end
    else
      render :new
    end
  end
  def destroy
    session[:usuarios_id] = nil
    redirect_to vista_index_path
  end
end
