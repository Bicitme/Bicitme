class RobosController < ApplicationController
  before_action :set_robo, only: [:show, :edit, :update, :destroy]

  # GET /robos
  # GET /robos.json
  def index
    @robos = Robo.all
  end

  # GET /robos/1
  # GET /robos/1.json
  def show
  end

  # GET /robos/new
  def new
    @robo = Robo.new
  end

  # GET /robos/1/edit
  def edit
  end

  # POST /robos
  # POST /robos.json
  def create
    @robo = Robo.new(robo_params)

    respond_to do |format|
      if @robo.save
        format.html { redirect_to @robo, notice: 'Robo was successfully created.' }
        format.json { render :show, status: :created, location: @robo }
      else
        format.html { render :new }
        format.json { render json: @robo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /robos/1
  # PATCH/PUT /robos/1.json
  def update
    respond_to do |format|
      if @robo.update(robo_params)
        format.html { redirect_to @robo, notice: 'Robo was successfully updated.' }
        format.json { render :show, status: :ok, location: @robo }
      else
        format.html { render :edit }
        format.json { render json: @robo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /robos/1
  # DELETE /robos/1.json
  def destroy
    @robo.destroy
    respond_to do |format|
      format.html { redirect_to robos_url, notice: 'Robo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_robo
      @robo = Robo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def robo_params
      params.require(:robo).permit(:robo_fecha, :robo_direccion, :robo_comentario, :robo_img, :comuna_id, :bicicleta_id)
    end
end
