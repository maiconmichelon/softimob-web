class CreateTiposImovel < ActiveRecord::Migration
  def change
    create_table :tipos_imovel do |t|
      t.string :nome
      t.boolean :ativo, default: true, null: false
      t.references :empresa, default: 1 , index: true, null: false

      t.timestamps
    end
  end
end
