class Endereco < ApplicationRecord
  belongs_to :cidade
  validates :cep, :logradouro, :bairro, :complemento, presence: true
end
