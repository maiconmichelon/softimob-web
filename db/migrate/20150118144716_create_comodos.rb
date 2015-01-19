class CreateComodos < ActiveRecord::Migration
  def change
    create_table :comodos do |t|
      t.references :tipoComodo, index: true
      t.integer :quantidade
      t.string :descricao
      t.references :imovel, index: true

      t.timestamps
    end
  end
end
