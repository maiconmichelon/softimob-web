class CreateImoveis < ActiveRecord::Migration
  def change
    create_table :imoveis do |t|
      t.boolean :ativo, null: false, default: true
      t.integer :metragem, null: false
      t.references :angariador, index: true
      t.references :proprietario, index: true, required: true
      t.references :tipoImovel, index: true, required: true
      t.string :observacoes
      t.references :endereco, index: true, required: true
      t.references :empresa, index: true, required: true

      t.timestamps
    end
  end
end
