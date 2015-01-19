class CreateContasPagarReceber < ActiveRecord::Migration
  def change
    create_table :contas_pagar_receber do |t|
      t.decimal :valor, precision: 12, scale: 2
      t.decimal :valorJurosDesconto, precision: 12, scale: 2
      t.date :dataConta
      t.date :dataVencimento
      t.date :dataPagamento
      t.references :OrigemConta, index: true
      t.integer :tipo
      t.references :movimentacaoContabil, index: true
      t.string :observacoes

      t.timestamps
    end
  end
end
