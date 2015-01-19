class CreateComissaos < ActiveRecord::Migration
  def change
    create_table :comissaos do |t|
      t.references :vendaAluguel, index: true
      t.references :comissionado, index: true

      t.timestamps
    end
  end
end
