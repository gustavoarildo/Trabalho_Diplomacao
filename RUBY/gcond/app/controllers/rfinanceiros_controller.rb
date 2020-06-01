class RfinanceirosController < ApplicationController
  before_action :set_rfinanceiro, only: [:show, :edit, :update, :destroy]

  # GET /rfinanceiros
  # GET /rfinanceiros.json
  def index
    @rfinanceiros = Rfinanceiro.all
  end

  # GET /rfinanceiros/1
  # GET /rfinanceiros/1.json
  def show
  end

  # GET /rfinanceiros/new
  def new
    @rfinanceiro = Rfinanceiro.new
  end

  # GET /rfinanceiros/1/edit
  def edit
  end

  # POST /rfinanceiros
  # POST /rfinanceiros.json
  def create
    @rfinanceiro = Rfinanceiro.new(rfinanceiro_params)

    respond_to do |format|
      if @rfinanceiro.save
        format.html { redirect_to @rfinanceiro, notice: 'Rfinanceiro was successfully created.' }
        format.json { render :show, status: :created, location: @rfinanceiro }
      else
        format.html { render :new }
        format.json { render json: @rfinanceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfinanceiros/1
  # PATCH/PUT /rfinanceiros/1.json
  def update
    respond_to do |format|
      if @rfinanceiro.update(rfinanceiro_params)
        format.html { redirect_to @rfinanceiro, notice: 'Rfinanceiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @rfinanceiro }
      else
        format.html { render :edit }
        format.json { render json: @rfinanceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfinanceiros/1
  # DELETE /rfinanceiros/1.json
  def destroy
    @rfinanceiro.destroy
    respond_to do |format|
      format.html { redirect_to rfinanceiros_url, notice: 'Rfinanceiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfinanceiro
      @rfinanceiro = Rfinanceiro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rfinanceiro_params
      params.require(:rfinanceiro).permit(:id_rf, :nome, :telefone, :valorMensalidade, :debitoTotal)
    end
end
