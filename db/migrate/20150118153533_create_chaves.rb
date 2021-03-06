class CreateChaves < ActiveRecord::Migration
  def change
    create_table :chaves do |t|
      t.string :numero
      t.references :imovel, index: true, null: false
      t.integer :localizacao, null: false
      t.boolean :ativo, null: false, default: true

      t.timestamps
    end
  end
end
