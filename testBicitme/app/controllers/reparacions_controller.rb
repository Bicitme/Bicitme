class ReparacionsController < ApplicationController
  before_action :set_reparacion, only: [:show, :edit, :update, :destroy]

  # GET /reparacions
  # GET /reparacions.json
  def index
    @reparacions = Reparacion.all
    @bicicleta = Bicicletum.where (["ciclista_id = '%s'", current_user.id])
  end

  # GET /reparacions/1
  # GET /reparacions/1.json
  def show
  end

  # GET /reparacions/new
  def new
    @reparacion = Reparacion.new
  end

  # GET /reparacions/1/edit
  def edit
  end

  # POST /reparacions
  # POST /reparacions.json
  def create
    @reparacion = Reparacion.new(reparacion_params)
    @reparacion.rep_estado = 'Espera'
    @reparacion.rep_fecha_in=Time.new
    @reparacion.rep_fecha_term="0000/00/00"
    respond_to do |format|
      if @reparacion.save
        format.html { redirect_to @reparacion, notice: 'Reparacion was successfully created.' }
        format.json { render :show, status: :created, location: @reparacion }
      else
        format.html { render :new }
        format.json { render json: @reparacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reparacions/1
  # PATCH/PUT /reparacions/1.json
  def update
    respond_to do |format|
      if @reparacion.update(reparacion_params)
        format.html { redirect_to @reparacion, notice: 'Reparacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @reparacion }
      else
        format.html { render :edit }
        format.json { render json: @reparacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reparacions/1
  # DELETE /reparacions/1.json
  def destroy
    @reparacion.destroy
    respond_to do |format|
      format.html { redirect_to reparacions_url, notice: 'Reparacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reparacion
      @reparacion = Reparacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reparacion_params
      params.require(:reparacion).permit(:rep_direccion, :rep_distancia, :rep_comentario, :rep_estado, :rep_fecha_in, :rep_fecha_term, :bicicleta_id, :calificacion_id)
    end
end
