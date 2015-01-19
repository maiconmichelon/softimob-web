class CreateAlugueis < ActiveRecord::Migration
  def change
    create_table :alugueis do |t|
      t.references :cliente, index: true
      t.date :dataVencimento
      t.references :indice, index: true
      t.boolean :resolvido
      t.date :dataFechamento

      t.timestamps
    end
  end
end
