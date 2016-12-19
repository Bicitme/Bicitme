class CiclistaController < ApplicationController
  before_action :set_ciclistum, only: [:show, :edit, :update, :destroy]

  # GET /ciclista
  # GET /ciclista.json
  def index
    #@ciclista = Ciclistum.all
    @ciclista = Ciclistum.where (["usuario_id = '%s'", current_user.id])
  end

  # GET /ciclista/1
  # GET /ciclista/1.json
  def show
  end

  # GET /ciclista/new
  def new
    @ciclistum = Ciclistum.new
  end

  # GET /ciclista/1/edit
  def edit
  end

  # POST /ciclista
  # POST /ciclista.json
  def create
    @ciclistum = Ciclistum.new(ciclistum_params)
    @ciclistum.cic_run = current_user.usuar_run
    @ciclistum.cic_cant_rep = 0
    @ciclistum.cic_cant_den = 0
    @ciclistum.cic_estado = 'A'
    @ciclistum.usuario_id = current_user.id
    respond_to do |format|
      if @ciclistum.save
        format.html { redirect_to @ciclistum, notice: 'Ciclistum was successfully created.' }
        format.json { render :show, status: :created, location: @ciclistum }
      else
        format.html { render :new }
        format.json { render json: @ciclistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ciclista/1
  # PATCH/PUT /ciclista/1.json
  def update
    respond_to do |format|
      if @ciclistum.update(ciclistum_params)
        format.html { redirect_to @ciclistum, notice: 'Ciclistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @ciclistum }
      else
        format.html { render :edit }
        format.json { render json: @ciclistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciclista/1
  # DELETE /ciclista/1.json
  def destroy
    @ciclistum.destroy
    respond_to do |format|
      format.html { redirect_to ciclista_url, notice: 'Ciclistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ciclistum
      @ciclistum = Ciclistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ciclistum_params
      params.require(:ciclistum).permit(:cic_run, :cic_cant_rep, :cic_cant_den, :cic_fono, :cic_estado, :usuario_id)
    end
end
