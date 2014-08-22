class HolaMundosController < ApplicationController
  before_action :set_hola_mundo, only: [:show, :edit, :update, :destroy]

  # GET /hola_mundos
  # GET /hola_mundos.json
  def index
    @hola_mundos = HolaMundo.all
  end

  # GET /hola_mundos/1
  # GET /hola_mundos/1.json
  def show
  end

  # GET /hola_mundos/new
  def new
    @hola_mundo = HolaMundo.new
  end

  # GET /hola_mundos/1/edit
  def edit
  end

  # POST /hola_mundos
  # POST /hola_mundos.json
  def create
    @hola_mundo = HolaMundo.new(hola_mundo_params)

    respond_to do |format|
      if @hola_mundo.save
        format.html { redirect_to @hola_mundo, notice: 'Hola mundo was successfully created.' }
        format.json { render :show, status: :created, location: @hola_mundo }
      else
        format.html { render :new }
        format.json { render json: @hola_mundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hola_mundos/1
  # PATCH/PUT /hola_mundos/1.json
  def update
    respond_to do |format|
      if @hola_mundo.update(hola_mundo_params)
        format.html { redirect_to @hola_mundo, notice: 'Hola mundo was successfully updated.' }
        format.json { render :show, status: :ok, location: @hola_mundo }
      else
        format.html { render :edit }
        format.json { render json: @hola_mundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hola_mundos/1
  # DELETE /hola_mundos/1.json
  def destroy
    @hola_mundo.destroy
    respond_to do |format|
      format.html { redirect_to hola_mundos_url, notice: 'Hola mundo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hola_mundo
      @hola_mundo = HolaMundo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hola_mundo_params
      params.require(:hola_mundo).permit(:nombre, :endad)
    end
end
