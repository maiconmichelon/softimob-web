class CreateMovimentacoesContabeis < ActiveRecord::Migration
  def change
    create_table :movimentacoes_contabeis do |t|
      t.decimal :valor, precision: 12, scale: 2
      t.date :data
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
