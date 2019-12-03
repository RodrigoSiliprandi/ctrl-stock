class Produto < ApplicationRecord
  belongs_to :unidade
  belongs_to :grupo_produto

  validates :nome, presence: true
  validates :nome, uniqueness: true
end
