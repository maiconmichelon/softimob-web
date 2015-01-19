class CreateAluguels < ActiveRecord::Migration
  def change
    create_table :aluguels do |t|
      t.references :cliente, index: true
      t.date :dataVencimento
      t.references :indice, index: true
      t.boolean :resolvido
      t.date :dataFechamento

      t.timestamps
    end
  end
end
