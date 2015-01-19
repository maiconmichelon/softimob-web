class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.string :nome
      t.references :estado, index: true

      t.timestamps
    end
  end
end
