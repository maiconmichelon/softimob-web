class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj

      t.timestamps
    end
    add_index :empresas, :cnpj, unique: true
  end
end
