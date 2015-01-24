class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome, null: false
      t.string :uf, null: false

      t.timestamps
    end
  end
end
