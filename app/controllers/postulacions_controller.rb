class PostulacionsController < ApplicationController
  before_action :set_postulacion, only: [:show, :edit, :update, :destroy]

  # GET /postulacions
  # GET /postulacions.json
  def index
    @postulacions = Postulacion.all
  end

  # GET /postulacions/1
  # GET /postulacions/1.json
  def show
  end

  # GET /postulacions/new
  def new
    @postulacion = Postulacion.new
  end

  # GET /postulacions/1/edit
  def edit
  end

  # POST /postulacions
  # POST /postulacions.json
  def create
    @postulacion = Postulacion.new(postulacion_params)    
    @postulacion.encargado_id = current_user.id
    @postulacion.post_estado = "Espera"
    respond_to do |format|
      if  Postulacion.where(:encargado_id => current_user.id, :post_estado => ["Espera","Activo"]).count == 0
        if Taller.where(:encargado_id => current_user.id).count == 0
          format.html { redirect_to vista_taller_path, notice: 'Postulación no puede ser creada, no posee un taller' }
          format.json { render json: @taller.errors, status: :unprocessable_entity }
        else
          if @postulacion.save
            format.html { redirect_to @postulacion, notice: 'Postulacion was successfully created.' }
            format.json { render :show, status: :created, location: @postulacion }
          else
            format.html { render :new }
            format.json { render json: @postulacion.errors, status: :unprocessable_entity }
          end
        end
      else
        format.html { redirect_to vista_taller_path, notice: 'Postulación no puede ser creada, ya tiene una en espera o ya tiene un taller aceptado' }
        format.json { render json: @taller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulacions/1
  # PATCH/PUT /postulacions/1.json
  def update      #EDITAR PARA AGREGAR QUE EL ADMIN EDITE
    respond_to do |format|
      if @postulacion.update(postulacion_params)
        format.html { redirect_to @postulacion, notice: 'Postulacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulacion }
      else
        format.html { render :edit }
        format.json { render json: @postulacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulacions/1
  # DELETE /postulacions/1.json
  def destroy
    @postulacion.destroy
    respond_to do |format|
      format.html { redirect_to postulacions_url, notice: 'Postulacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulacion
      @postulacion = Postulacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postulacion_params
      params.require(:postulacion).permit(:post_tiempo_taller, :post_referencia_1, :post_referencia_2, :post_estado, :encargado_id, :administrador_id)
    end
end
