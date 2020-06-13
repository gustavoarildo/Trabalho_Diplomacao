class DemonstrativosController < ApplicationController

  before_action :set_demonstrativo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!





  # GET /demonstrativos
  # GET /demonstrativos.json
  def index
    @demonstrativos = Demonstrativo.all
  end

  # GET /demonstrativos/1
  # GET /demonstrativos/1.json
  def show
  end

  # GET /demonstrativos/new
  def new
    @demonstrativo = Demonstrativo.new
  end

  # GET /demonstrativos/1/edit
  def edit
  end

  # POST /demonstrativos
  # POST /demonstrativos.json
  def create
    @demonstrativo = Demonstrativo.new(demonstrativo_params)

    respond_to do |format|
      if @demonstrativo.save
        format.html { redirect_to @demonstrativo, notice: 'Demonstrativo was successfully created.' }
        format.json { render :show, status: :created, location: @demonstrativo }
      else
        format.html { render :new }
        format.json { render json: @demonstrativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demonstrativos/1
  # PATCH/PUT /demonstrativos/1.json
  def update
    respond_to do |format|
      if @demonstrativo.update(demonstrativo_params)
        format.html { redirect_to @demonstrativo, notice: 'Demonstrativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @demonstrativo }
      else
        format.html { render :edit }
        format.json { render json: @demonstrativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demonstrativos/1
  # DELETE /demonstrativos/1.json
  def destroy
    @demonstrativo.destroy
    respond_to do |format|
      format.html { redirect_to demonstrativos_url, notice: 'Demonstrativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demonstrativo
      @demonstrativo = Demonstrativo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demonstrativo_params
      params.require(:demonstrativo).permit(:id_mesano, :valordespesatotal, :receitaestimada, :inadimplencia, :receitamenosinadimplencia)
    end
end
