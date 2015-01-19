class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.references :rua, index: true
      t.string :numero
      t.string :complemento

      t.timestamps
    end
  end
end
