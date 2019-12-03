class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.belongs_to :unidade, foreign_key: true
      t.belongs_to :grupo_produto, foreign_key: true

      t.timestamps
    end
  end
end
