class CreateTiposImovelTiposComodo < ActiveRecord::Migration
  def change
    create_table :tipos_imovel_tipos_comodo do |t|
      t.references :tipoImovel, index: true
      t.references :tipoComodo, index: true
      t.boolean :preSelecionado

      t.timestamps
    end
  end
end
