class EncargadoTallersController < ApplicationController
  before_action :set_encargado_taller, only: [:show, :edit, :update, :destroy]

  # GET /encargado_tallers
  # GET /encargado_tallers.json
  def index
    @encargado_tallers = EncargadoTaller.where (["usuario_id = '%s'", current_user.id])
  end

  # GET /encargado_tallers/1
  # GET /encargado_tallers/1.json
  def show
  end

  # GET /encargado_tallers/new
  def new
    @encargado_taller = EncargadoTaller.new
  end

  # GET /encargado_tallers/1/edit
  def edit
  end

  # POST /encargado_tallers
  # POST /encargado_tallers.json
  def create
    @encargado_taller = EncargadoTaller.new(encargado_taller_params)
    @encargado_taller.enc_run = current_user.usuar_run
    @encargado_taller.enc_estado = 'A'
    @encargado_taller.usuario_id = current_user.id
        #editar aca
    respond_to do |format|
      if @encargado_taller.save
        format.html { redirect_to @encargado_taller, notice: 'Encargado taller was successfully created.' }
        format.json { render :show, status: :created, location: @encargado_taller }
      else
        format.html { render :new }
        format.json { render json: @encargado_taller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encargado_tallers/1
  # PATCH/PUT /encargado_tallers/1.json
  def update
    respond_to do |format|
      if @encargado_taller.update(encargado_taller_params)
        format.html { redirect_to @encargado_taller, notice: 'Encargado taller was successfully updated.' }
        format.json { render :show, status: :ok, location: @encargado_taller }
      else
        format.html { render :edit }
        format.json { render json: @encargado_taller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encargado_tallers/1
  # DELETE /encargado_tallers/1.json
  def destroy
    @encargado_taller.destroy
    respond_to do |format|
      format.html { redirect_to encargado_tallers_url, notice: 'Encargado taller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encargado_taller
      @encargado_taller = EncargadoTaller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encargado_taller_params
      params.require(:encargado_taller).permit(:enc_run, :enc_rol, :enc_tiempo, :enc_estado, :usuario_id)
    end
end
