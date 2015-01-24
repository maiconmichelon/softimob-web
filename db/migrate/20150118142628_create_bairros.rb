class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.string :nome, null: false
      t.references :municipio, index: true, null: false

      t.timestamps
    end
  end
end
