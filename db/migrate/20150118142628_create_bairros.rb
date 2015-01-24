class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.string :nome, null: false
      t.references :municipio, index: true, required: true

      t.timestamps
    end
  end
end
