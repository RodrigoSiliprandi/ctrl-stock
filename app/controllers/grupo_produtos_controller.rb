class GrupoProdutosController < ApplicationController
  before_action :set_grupo_produto, only: [:show, :edit, :update, :destroy]

  # GET /grupo_produtos
  # GET /grupo_produtos.json
  def index
    @grupo_produtos = GrupoProduto.all
  end

  # GET /grupo_produtos/1
  # GET /grupo_produtos/1.json
  def show
  end

  # GET /grupo_produtos/new
  def new
    @grupo_produto = GrupoProduto.new
  end

  # GET /grupo_produtos/1/edit
  def edit
  end

  # POST /grupo_produtos
  # POST /grupo_produtos.json
  def create
    @grupo_produto = GrupoProduto.new(grupo_produto_params)

    respond_to do |format|
      if @grupo_produto.save
        format.html { redirect_to @grupo_produto, notice: 'Grupo produto was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_produto }
      else
        format.html { render :new }
        format.json { render json: @grupo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_produtos/1
  # PATCH/PUT /grupo_produtos/1.json
  def update
    respond_to do |format|
      if @grupo_produto.update(grupo_produto_params)
        format.html { redirect_to @grupo_produto, notice: 'Grupo produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_produto }
      else
        format.html { render :edit }
        format.json { render json: @grupo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_produtos/1
  # DELETE /grupo_produtos/1.json
  def destroy
    @grupo_produto.destroy
    respond_to do |format|
      format.html { redirect_to grupo_produtos_url, notice: 'Grupo produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_produto
      @grupo_produto = GrupoProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_produto_params
      params.require(:grupo_produto).permit(:nome)
    end
end
