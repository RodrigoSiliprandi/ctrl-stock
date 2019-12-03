class CreateMovimentacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentacaos do |t|
      t.integer :quantidade
      t.belongs_to :pessoa, foreign_key: true
      t.belongs_to :operacao, foreign_key: true
      t.belongs_to :produto, foreign_key: true
      t.date :data

      t.timestamps
    end
  end
end
