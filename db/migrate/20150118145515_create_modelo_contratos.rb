class CreateModeloContratos < ActiveRecord::Migration
  def change
    create_table :modelo_contratos do |t|
      t.string :nome
      t.references :empresa, index: true
      t.boolean :ativo

      t.timestamps
    end
  end
end
