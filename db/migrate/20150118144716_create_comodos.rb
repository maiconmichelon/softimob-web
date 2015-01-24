class CreateComodos < ActiveRecord::Migration
  def change
    create_table :comodos do |t|
      t.references :tipoComodo, index: true, null: false
      t.integer :quantidade, null: false
      t.string :descricao
      t.references :imovel, index: true, null: false

      t.timestamps
    end
  end
end
