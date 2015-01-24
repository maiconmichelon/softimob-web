class CreateProposta < ActiveRecord::Migration
  def change
    create_table :proposta do |t|
      t.date :data, null: false
      t.date :dataFechamento
      t.references :cliente, index: true, null: false
      t.references :funcionario, index: true, null: false
      t.decimal :valor, precision: 12, scale: 2, null: false
      t.string :observacoes
      t.integer :status, null: false
      t.references :proposta, index: true
      t.integer :tipoContraProposta
      t.references :imovel, index: true, null: false

      t.timestamps
    end
  end
end
