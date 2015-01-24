class CreateChaves < ActiveRecord::Migration
  def change
    create_table :chaves do |t|
      t.string :numero
      t.references :imovel, index: true, required: true
      t.integer :localizacao, required: true

      t.timestamps
    end
  end
end
