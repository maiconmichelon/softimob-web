class CreateChaves < ActiveRecord::Migration
  def change
    create_table :chaves do |t|
      t.string :numero
      t.references :imovel, index: true
      t.integer :localizacao

      t.timestamps
    end
  end
end
