class KeduasController < ApplicationController
  before_action :set_kedua, only: [:show, :edit, :update, :destroy]

  # GET /keduas
  # GET /keduas.json
  def index
    @keduas = Kedua.all
  end

  # GET /keduas/1
  # GET /keduas/1.json
  def show
  end

  # GET /keduas/new
  def new
    @kedua = Kedua.new
  end

  # GET /keduas/1/edit
  def edit
  end

  # POST /keduas
  # POST /keduas.json
  def create
    @kedua = Kedua.new(kedua_params)

    respond_to do |format|
      if @kedua.save
        format.html { redirect_to @kedua, notice: 'Kedua was successfully created.' }
        format.json { render :show, status: :created, location: @kedua }
      else
        format.html { render :new }
        format.json { render json: @kedua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keduas/1
  # PATCH/PUT /keduas/1.json
  def update
    respond_to do |format|
      if @kedua.update(kedua_params)
        format.html { redirect_to @kedua, notice: 'Kedua was successfully updated.' }
        format.json { render :show, status: :ok, location: @kedua }
      else
        format.html { render :edit }
        format.json { render json: @kedua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keduas/1
  # DELETE /keduas/1.json
  def destroy
    @kedua.destroy
    respond_to do |format|
      format.html { redirect_to keduas_url, notice: 'Kedua was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kedua
      @kedua = Kedua.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kedua_params
      params.require(:kedua).permit(:nama, :alamat, :no_hp)
    end
end
