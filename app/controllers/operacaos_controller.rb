class OperacaosController < ApplicationController
  before_action :set_operacao, only: [:show, :edit, :update, :destroy]

  # GET /operacaos
  # GET /operacaos.json
  def index
    @operacaos = Operacao.all
  end

  # GET /operacaos/1
  # GET /operacaos/1.json
  def show
  end

  # GET /operacaos/new
  def new
    @operacao = Operacao.new
  end

  # GET /operacaos/1/edit
  def edit
  end

  # POST /operacaos
  # POST /operacaos.json
  def create
    @operacao = Operacao.new(operacao_params)

    respond_to do |format|
      if @operacao.save
        format.html { redirect_to @operacao, notice: 'Operacao was successfully created.' }
        format.json { render :show, status: :created, location: @operacao }
      else
        format.html { render :new }
        format.json { render json: @operacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operacaos/1
  # PATCH/PUT /operacaos/1.json
  def update
    respond_to do |format|
      if @operacao.update(operacao_params)
        format.html { redirect_to @operacao, notice: 'Operacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacao }
      else
        format.html { render :edit }
        format.json { render json: @operacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operacaos/1
  # DELETE /operacaos/1.json
  def destroy
    @operacao.destroy
    respond_to do |format|
      format.html { redirect_to operacaos_url, notice: 'Operacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacao
      @operacao = Operacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacao_params
      params.require(:operacao).permit(:descricao, :tipo)
    end
end
