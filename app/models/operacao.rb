class Operacao < ApplicationRecord
  enum tipo: { venda: 0, compra: 1, devolucao_venda: 2, devolucao_compra: 3 }

  validates :tipo, :descricao, presence: true
end
