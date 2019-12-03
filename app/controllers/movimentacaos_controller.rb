class MovimentacaosController < ApplicationController
  before_action :set_movimentacao, only: [:show, :edit, :update, :destroy]

  # GET /movimentacaos
  # GET /movimentacaos.json
  def index
    @movimentacaos = Movimentacao.all
  end

  # GET /movimentacaos/1
  # GET /movimentacaos/1.json
  def show
  end

  # GET /movimentacaos/new
  def new
    @movimentacao = Movimentacao.new
  end

  # GET /movimentacaos/1/edit
  def edit
  end

  # POST /movimentacaos
  # POST /movimentacaos.json
  def create
    @movimentacao = Movimentacao.new(movimentacao_params)

    respond_to do |format|
      if @movimentacao.save
        format.html { redirect_to @movimentacao, notice: 'Movimentacao was successfully created.' }
        format.json { render :show, status: :created, location: @movimentacao }
      else
        format.html { render :new }
        format.json { render json: @movimentacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimentacaos/1
  # PATCH/PUT /movimentacaos/1.json
  def update
    respond_to do |format|
      if @movimentacao.update(movimentacao_params)
        format.html { redirect_to @movimentacao, notice: 'Movimentacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimentacao }
      else
        format.html { render :edit }
        format.json { render json: @movimentacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentacaos/1
  # DELETE /movimentacaos/1.json
  def destroy
    @movimentacao.destroy
    respond_to do |format|
      format.html { redirect_to movimentacaos_url, notice: 'Movimentacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimentacao
      @movimentacao = Movimentacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimentacao_params
      params.require(:movimentacao).permit(:quantidade, :pessoa_id, :operacao_id, :produto_id, :data)
    end
end
