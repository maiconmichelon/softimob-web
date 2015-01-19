class CreateProposta < ActiveRecord::Migration
  def change
    create_table :proposta do |t|
      t.date :data
      t.date :dataFechamento
      t.references :cliente, index: true
      t.references :funcionario, index: true
      t.decimal :valor, precision: 12, scale: 2
      t.string :observacoes
      t.integer :status
      t.references :proposta, index: true
      t.integer :tipoContraProposta
      t.references :imovel, index: true

      t.timestamps
    end
  end
end
