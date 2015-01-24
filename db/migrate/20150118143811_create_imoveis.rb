class CreateImoveis < ActiveRecord::Migration
  def change
    create_table :imoveis do |t|
      t.boolean :ativo, null: false, default: true
      t.integer :metragem, null: false
      t.references :angariador, index: true
      t.references :proprietario, index: true, null: false
      t.references :tipoImovel, index: true, null: false
      t.string :observacoes
      t.references :endereco, index: true, null: false
      t.references :empresa, default: 1 , index: true, null: false

      t.timestamps
    end
  end
end
