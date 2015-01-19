class CreateComissoes < ActiveRecord::Migration
  def change
    create_table :comissoes do |t|
      t.references :vendaAluguel, index: true
      t.references :comissionado, index: true

      t.timestamps
    end
  end
end
