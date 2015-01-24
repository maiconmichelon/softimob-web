class CreateVistoriasItensCheckList < ActiveRecord::Migration
  def change
    create_table :vistorias_itens_check_list do |t|
      t.references :vistoria, null: false, index: true
      t.references :item_check_list, null: false, index: true
    end
  end
end
