class SessionsController < ApplicationController
  def new
  end
  def create
    usuario = Usuario.find_by(:usuar_correo => params[:email])
    if usuario && Usuario.where(:usuar_contrasegna => params[:password]).first
      session[:usuarios_id] = usuario.id
      if usuario.usuar_tipo_cod == 'C'   #Editar para que el admin llegue al seteo de su cuenta.
        if (Ciclistum.where(:usuario_id => usuario.id).count >0) # exists?(usuario.id))
          redirect_to vista_index_path
        else
          redirect_to new_ciclistum_path
        end
        
      else
        if (usuario.usuar_tipo_cod == 'E')
          if (EncargadoTaller.where(:usuario_id => usuario.id).count > 0) #.exists?(usuario.id))
            redirect_to vista_index_path
          else
            redirect_to registrarenc_path
          end
          
        else
          if (Administrador.where(:usuario_id => usuario.id).count > 0) #.exists?(usuario.id)) #revisar correctitud
            redirect_to vista_index_path
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
