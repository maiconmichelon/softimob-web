class CreateTiposImovelTiposComodo < ActiveRecord::Migration
  def change
    create_table :tipos_imovel_tipos_comodo do |t|
      t.references :tipoImovel, index: true, required: true
      t.references :tipoComodo, index: true, required: true
      t.boolean :preSelecionado, default: true, required: true

      t.timestamps
    end
  end
end
