class CreateLancamentoContabils < ActiveRecord::Migration
  def change
    create_table :lancamento_contabils do |t|
      t.integer :tipo
      t.string :historico
      t.decimal12 :valor
      t.decimal2 :valor
      t.references :planoConta, index: true
      t.references :movimentacaoContabil, index: true

      t.timestamps
    end
  end
end
