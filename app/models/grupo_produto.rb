class GrupoProduto < ApplicationRecord
  validates :nome, presence: true
  validates :nome, uniqueness: true
end
