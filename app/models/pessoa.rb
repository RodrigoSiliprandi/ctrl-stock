class Pessoa < ApplicationRecord
  enum tipo: { cliente: 0, fornecedor: 1 }

  validates :nome, :documento, :endereco_id, :tipo, presence: true
end