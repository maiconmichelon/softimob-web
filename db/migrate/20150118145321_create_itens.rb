class CreateItens < ActiveRecord::Migration
  def change
    create_table :itens do |t|
      t.string :nome
      t.boolean :obrigatorio, null: false, default: true
      t.belongs_to :check_list, null: false, index: true

      t.timestamps
    end
  end
end
