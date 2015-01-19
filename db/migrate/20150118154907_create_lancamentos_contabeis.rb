class CreateLancamentosContabeis < ActiveRecord::Migration
  def change
    create_table :lancamentos_contabeis do |t|
      t.integer :tipo
      t.string :historico
      t.decimal :valor, precision: 14, scale: 2
      t.references :planoConta, index: true
      t.references :movimentacaoContabil, index: true

      t.timestamps
    end
  end
end
