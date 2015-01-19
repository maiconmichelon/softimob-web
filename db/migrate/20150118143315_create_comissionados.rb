class CreateComissionados < ActiveRecord::Migration
  def change
    create_table :comissionados do |t|
      t.string :nome
      t.string :telefone
      t.string :celular
      t.string :email
      t.date :dataNascimento
      t.boolean :ativo
      t.references :endereco, index: true
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
