class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.string :nome, null: false
      t.references :estado, index: true, null: false

      t.timestamps
    end
  end
end
