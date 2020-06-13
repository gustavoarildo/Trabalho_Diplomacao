class ConddespesasController < ApplicationController
  before_action :set_conddespesa, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!



  # GET /conddespesas
  # GET /conddespesas.json
  def index
    @conddespesas = Conddespesa.all
  end

  # GET /conddespesas/1
  # GET /conddespesas/1.json
  def show
  end

  # GET /conddespesas/new
  def new
    @conddespesa = Conddespesa.new
  end

  # GET /conddespesas/1/edit
  def edit
  end

  # POST /conddespesas
  # POST /conddespesas.json
  def create
    @conddespesa = Conddespesa.new(conddespesa_params)

    respond_to do |format|
      if @conddespesa.save
        format.html { redirect_to @conddespesa, notice: 'Conddespesa was successfully created.' }
        format.json { render :show, status: :created, location: @conddespesa }
      else
        format.html { render :new }
        format.json { render json: @conddespesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conddespesas/1
  # PATCH/PUT /conddespesas/1.json
  def update
    respond_to do |format|
      if @conddespesa.update(conddespesa_params)
        format.html { redirect_to @conddespesa, notice: 'Conddespesa was successfully updated.' }
        format.json { render :show, status: :ok, location: @conddespesa }
      else
        format.html { render :edit }
        format.json { render json: @conddespesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conddespesas/1
  # DELETE /conddespesas/1.json
  def destroy
    @conddespesa.destroy
    respond_to do |format|
      format.html { redirect_to conddespesas_url, notice: 'Conddespesa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conddespesa
      @conddespesa = Conddespesa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conddespesa_params
      params.require(:conddespesa).permit(:id_cd, :nomedespesa, :valordespesa)
    end
end
