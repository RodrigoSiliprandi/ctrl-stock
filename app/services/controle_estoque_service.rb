class ControleEstoqueService
  def self.comprar(movimentacao)
    new(movimentacao).comprar
  end

  def self.vender(movimentacao)
    new(movimentacao).vender
  end

  def self.devolver_compra
    new(produto, rdata, operacao, quantidade).devolver_compra
  end

  def self.devolver_venda
    new(produto, rdata, operacao, quantidade).devolver_venda
  end

  def initialize(produto, rdata, operacao, quantidade)
    @produto = produto
    @rdata = rdata
    @operacao = operacao
    @quantidade = quantidade
  end

  def realizar_compra
    movimentar(produto, rdata, operacao, quantidade)
  end

  def mov_saida
    Movimentacao.por_operacao(@produto, @date, 0)
    Movimentacao.por_operacao(@produto, @date, 3)
  end

  def mov_entrada
    Movimentacao.por_operacao(@produto, @date, 1)
    Movimentacao.por_operacao(@produto, @date, 2)
  end

  def movimentar
    movimentacao = Movimentacao.create(produto: @produto,
                                       rdata: @rdata,
                                       operacao: @operacao)
    movimentacao.save
    movimentacao
  end
end
