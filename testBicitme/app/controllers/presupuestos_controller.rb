class PresupuestosController < ApplicationController
  before_action :set_presupuesto, only: [:show, :edit, :update, :destroy]

  # GET /presupuestos
  # GET /presupuestos.json
  def index
    @taller = Taller.find_by(:encargado_id => current_user.id)
    @presupuestos = Presupuesto.where(:taller_id => @taller.id) 
    @reparacions = Reparacion.all #editar solo debe ver las suyas
  end

  # GET /presupuestos/1
  # GET /presupuestos/1.json
  def show
  end
  # GET /presupuestos/new
  def new
    @presupuesto = Presupuesto.new
  end

  # GET /presupuestos/1/edit
  def edit
  end

  # POST /presupuestos
  # POST /presupuestos.json
  def create
    @presupuesto = Presupuesto.new(presupuesto_params)
    @presupuesto.prep_estado = "Espera"
    @taller = Taller.find_by(:encargado_id => current_user.id)
    @presupuesto.taller_id = @taller.id
    respond_to do |format|
      if Postulacion.where(:encargado_id => current_user.id, :post_estado => "Activo").count == 1
        if @presupuesto.save
          format.html { redirect_to @presupuesto, notice: 'Presupuesto was successfully created.' }
          format.json { render :show, status: :created, location: @presupuesto }
        else
          format.html { render :new }
          format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
        end
        else
          format.html { redirect_to vista_taller_path, notice: 'No puede crear presupuestos, debido a que no tiene un taller activo' }
          format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuestos/1
  # PATCH/PUT /presupuestos/1.json
  def update
    respond_to do |format|
      if @presupuesto.update(presupuesto_params)
        format.html { redirect_to @presupuesto, notice: 'Presupuesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @presupuesto }
      else
        format.html { render :edit }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presupuestos/1
  # DELETE /presupuestos/1.json
  def destroy
    @presupuesto.destroy
    respond_to do |format|
      format.html { redirect_to presupuestos_url, notice: 'Presupuesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presupuesto
      @presupuesto = Presupuesto.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def presupuesto_params
      params.require(:presupuesto).permit(:prep_precio_min, :prep_precio_max, :prep_comentario, :prep_estado, :taller_id, :reparacion_id)
    end
end
