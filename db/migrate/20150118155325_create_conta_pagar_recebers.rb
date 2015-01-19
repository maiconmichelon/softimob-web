class CreateContaPagarRecebers < ActiveRecord::Migration
  def change
    create_table :conta_pagar_recebers do |t|
      t.decimal12 :valor
      t.decimal2 :valor
      t.decimal12 :valorJurosDesconto
      t.decimal2 :valorJurosDesconto
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
