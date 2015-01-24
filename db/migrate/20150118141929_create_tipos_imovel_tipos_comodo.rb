class CreateTiposImovelTiposComodo < ActiveRecord::Migration
  def change
    create_table :tipos_imovel_tipos_comodo do |t|
      t.references :tipoImovel, index: true, null: false
      t.references :tipoComodo, index: true, null: false
      t.boolean :preSelecionado, default: true, null: false

      t.timestamps
    end
  end
end
