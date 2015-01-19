class CreateIndiceMes < ActiveRecord::Migration
  def change
    create_table :indice_mes do |t|
      t.references :indice, index: true
      t.date :data
      t.decimal4 :porcentagem
      t.decimal2 :porcentagem

      t.timestamps
    end
  end
end
