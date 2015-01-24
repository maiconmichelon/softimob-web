class CreateProposta < ActiveRecord::Migration
  def change
    create_table :proposta do |t|
      t.date :data, required: true
      t.date :dataFechamento
      t.references :cliente, index: true, required: true
      t.references :funcionario, index: true, required: true
      t.decimal :valor, precision: 12, scale: 2, required: true
      t.string :observacoes
      t.integer :status, required: true
      t.references :proposta, index: true
      t.integer :tipoContraProposta
      t.references :imovel, index: true, required: true

      t.timestamps
    end
  end
end
