class Unidade < ApplicationRecord
  validates :sigla, :descricao, presence: true
  validates :sigla, uniqueness: true
end
