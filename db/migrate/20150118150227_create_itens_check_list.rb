class CreateItensCheckList < ActiveRecord::Migration
  def change
    create_table :itens_check_list do |t|
      t.references :checkList, index: true, null: false
      t.string :nome
      t.string :valor, null: false
      t.boolean :finalizado, null: false, default: false
      t.boolean :obrigatorio, null: false, default: true

      t.timestamps
    end
  end
end
