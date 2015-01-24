class CreateItensCheckList < ActiveRecord::Migration
  def change
    create_table :itens_check_list do |t|
      t.references :checkList, index: true, required: true
      t.string :nome
      t.string :valor, required: true
      t.boolean :finalizado, required: true, default: false
      t.boolean :obrigatorio, required: true, default: true

      t.timestamps
    end
  end
end
