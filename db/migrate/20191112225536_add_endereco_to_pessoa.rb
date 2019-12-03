class AddEnderecoToPessoa < ActiveRecord::Migration[5.2]
  def change
    add_reference :pessoas, :endereco, foreign_key: true
  end
end
