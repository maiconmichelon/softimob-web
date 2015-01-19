class CreateIndicesMes < ActiveRecord::Migration
  def change
    create_table :indices_mes do |t|
      t.references :indice, index: true
      t.date :data
      t.decimal :porcentagem, precision: 4, scale: 2

      t.timestamps
    end
  end
end
