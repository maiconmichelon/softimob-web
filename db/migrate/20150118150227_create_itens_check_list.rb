class CreateItensCheckList < ActiveRecord::Migration
  def change
    create_table :itens_check_list do |t|
      t.string :nome, null: false
      t.string :valor, null: false
      t.boolean :finalizado, null: false, default: false

      t.timestamps
    end
  end
end
