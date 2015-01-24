class CreateImoveis < ActiveRecord::Migration
  def change
    create_table :imoveis do |t|
      t.boolean :ativo, null: false, default: true
      t.integer :metragem, null: false
      t.references :funcionario, index: true
      t.references :cliente, index: true
      t.references :tipoImovel, index: true
      t.string :observacoes
      t.references :endereco, index: true
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
