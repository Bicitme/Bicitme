class SessionsController < ApplicationController
  def new
  end
  def create
    usuario = Usuario.find_by(:usuar_correo => params[:email])
    if usuario && Usuario.where(:usuar_contrasegna => params[:password]).first
      session[:usuarios_id] = usuario.id
      if usuario.usuar_tipo_cod == 'C'   #Editar para que el admin llegue al seteo de su cuenta.
        redirect_to vista_ciclista_path
      else
        if (usuario.usuar_tipo_cod == 'E')
          redirect_to vista_taller_path
        else
          if (Administrador.exists?(usuario.id)) #revisar correctitud
            redirect_to administradors_path
          else
            redirect_to bienvenida_path
          end
        end
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
