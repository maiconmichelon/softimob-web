class CreateComodos < ActiveRecord::Migration
  def change
    create_table :comodos do |t|
      t.references :tipoComodo, index: true, required: true
      t.integer :quantidade, required: true
      t.string :descricao
      t.references :imovel, index: true, required: true

      t.timestamps
    end
  end
end
