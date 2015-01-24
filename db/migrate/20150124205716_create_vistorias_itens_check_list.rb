class CreateVistoriasItensCheckList < ActiveRecord::Migration
  def change
    create_table :vistorias_itens_check_list do |t|
      t.references :vistoria, required: true, index: true
      t.references :item_check_list, required: true, index: true
    end
  end
end
