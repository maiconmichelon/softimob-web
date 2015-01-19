class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :proprietario, index: true
      t.boolean :fechado

      t.timestamps
    end
  end
end
