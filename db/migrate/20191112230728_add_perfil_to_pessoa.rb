class AddPerfilToPessoa < ActiveRecord::Migration[5.2]
  def change
    add_column :pessoas, :tipo, :integer
  end
end
