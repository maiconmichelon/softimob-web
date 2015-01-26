class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome, null: false
      t.string :uf, null: false
      t.references :empresa, null: false, default: 1, index: true

      t.timestamps
    end
  end
end
