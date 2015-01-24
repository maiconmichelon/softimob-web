class CreateVendasAlugueisItensCheckList < ActiveRecord::Migration
  def change
    create_table :vendas_alugueis_itens_check_list do |t|
      t.references :venda_aluguel, null: false, index: true
      t.references :item_check_list, null: false, index: true
    end
  end
end
