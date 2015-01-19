class CreateImoveis < ActiveRecord::Migration
  def change
    create_table :imoveis do |t|
      t.boolean :ativo
      t.integer :metragem
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
