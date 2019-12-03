class CreateCidades < ActiveRecord::Migration[5.2]
  def change
    create_table :cidades do |t|
      t.belongs_to :estado, foreign_key: true
      t.string :nome

      t.timestamps
    end
  end
end
