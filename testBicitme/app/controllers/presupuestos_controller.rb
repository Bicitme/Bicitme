class PresupuestosController < ApplicationController
  before_action :set_presupuesto, only: [:show, :edit, :update, :destroy]

  # GET /presupuestos
  # GET /presupuestos.json
  def index
    if (current_user.usuar_tipo_cod == 'C')
      @presupuestos = Presupuesto.find_by_sql ["SELECT rep_comentario, bic_marca, bic_modelo, bic_color_princ, presupuestos.id, presupuestos.prep_precio_min, presupuestos.prep_precio_max, presupuestos.prep_comentario, presupuestos.prep_estado, presupuestos.taller_id, tallers.taller_nombre, presupuestos.reparacion_id 
                                                FROM bicicleta, reparacions, presupuestos, tallers 
                                                WHERE bicicleta.ciclista_id = :user_id and bicicleta.id = reparacions.bicicleta_id and presupuestos.reparacion_id = reparacions.id and tallers.id = presupuestos.taller_id and (presupuestos.prep_estado = 'Aceptado' or presupuestos.prep_estado = 'Espera')", { :user_id => current_user.id }]
      #@presupuestos = Presupuesto.all
    end
    if (current_user.usuar_tipo_cod == 'E')  
      @taller = Taller.find_by(:encargado_id => current_user.id)
      @presupuestos = Presupuesto.where(:taller_id => @taller.id, :prep_estado => ['Aceptado','Completado']) 
      @reparacions = Reparacion.all #editar solo debe ver las suyas
    end
  
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
      if !Presupuesto.exists?(:reparacion_id => @presupuesto.reparacion_id, :taller_id => @taller.id)
        if Postulacion.where(:encargado_id => current_user.id, :post_estado => "Activo").count == 1 
          if Taller.where(:encargado_id => current_user.id, :taller_estado => 'Activo')
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
          else
            format.html { redirect_to vista_taller_path, notice: 'No puede crear presupuestos, debido a que no tiene una postulacion activa' }
            format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to vista_taller_path, notice: 'No puede crear más de un presupuesto, para una sola reparación.' }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuestos/1
  # PATCH/PUT /presupuestos/1.json
  def update
    if current_user.usuar_tipo_cod == 'C'
      respond_to do |format|
        
        if @presupuesto.update(presupuesto_params)
          if @presupuesto.prep_estado == 'Aceptado'
            Presupuesto.where.not(:id => @presupuesto.id).where(:reparacion_id => @presupuesto.reparacion_id).update_all(:prep_estado => 'Rechazado')
          end
          format.html { redirect_to @presupuesto, notice: 'Presupuesto was successfully updated.' }
          format.json { render :show, status: :ok, location: @presupuesto }
        else
          format.html { render :edit }
          format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
        end
      end
   end
   if current_user.usuar_tipo_cod == 'E'
     respond_to do |format|
        if @presupuesto.update(presupuesto_params)
          if @presupuesto.prep_estado == 'Completado'
            Reparacion.where(:id => @presupuesto.reparacion_id).update_all(:rep_estado => 'Completado', :rep_fecha_term => Time.new)
          end
          format.html { redirect_to @presupuesto, notice: 'Presupuesto was successfully updated.' }
          format.json { render :show, status: :ok, location: @presupuesto }
          else
          format.html { render :edit }
          format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
        end
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
