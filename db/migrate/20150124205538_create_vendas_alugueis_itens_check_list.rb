class CreateVendasAlugueisItensCheckList < ActiveRecord::Migration
  def change
    create_table :vendas_alugueis_itens_check_list do |t|
      t.references :venda_aluguel, required: true, index: true
      t.references :item_check_list, required: true, index: true
    end
  end
end
