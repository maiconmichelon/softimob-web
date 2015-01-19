class CreateTipoImovelTipoComodos < ActiveRecord::Migration
  def change
    create_table :tipo_imovel_tipo_comodos do |t|
      t.references :tipoImovel, index: true
      t.references :tipoComodo, index: true
      t.boolean :preSelecionado

      t.timestamps
    end
  end
end
