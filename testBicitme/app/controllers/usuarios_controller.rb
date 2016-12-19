class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json

  def index
    @usuarios = Usuario.all
    @bicicletas = Bicicletum.all 
    @ciclista = Ciclistum.all 
  end
  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)
    if (current_user) #Quien lo está creando es un admin? -> el usuario que va a crear también lo es.
      @usuario.usuar_tipo_cod = 'A'
    end
    respond_to do |format|
      if @usuario.save
        if (current_user) #Ya esta dentro del sistema?
        else
          session[:usuarios_id] = @usuario.id #si no lo esta ingresarlo.  
        end
        
        format.html { redirect_to @usuario, notice: 'Usuario creado con exito.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario actualizado.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:usuar_run, :usuar_ap_pat, :usuar_ap_mat, :usuar_nom_usuario, :usuar_contrasegna, :usuar_correo, :usuar_tipo_cod)
    end
end
