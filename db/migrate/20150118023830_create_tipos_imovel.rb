class CreateTiposImovel < ActiveRecord::Migration
  def change
    create_table :tipos_imovel do |t|
      t.string :nome
      t.boolean :ativo, default: true, null: false
      t.references :empresa, index: true, required: true

      t.timestamps
    end
  end
end