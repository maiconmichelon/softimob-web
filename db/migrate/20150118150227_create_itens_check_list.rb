class CreateItensCheckList < ActiveRecord::Migration
  def change
    create_table :itens_check_list do |t|
      t.references :checkList, index: true
      t.string :nome
      t.string :valor
      t.boolean :finalizado
      t.boolean :obrigatorio

      t.timestamps
    end
  end
end
