class CreateContratoPrestacaoServicos < ActiveRecord::Migration
  def change
    create_table :contrato_prestacao_servicos do |t|
      t.decimal12 :valorImovel
      t.decimal2 :valorImovel
      t.integer :tipo
      t.references :imovel, index: true
      t.boolean :divulgar
      t.date :dataInicio
      t.date :dataVencimento
      t.references :funcionario, index: true
      t.references :cliente, index: true
      t.boolean :resolvido
      t.date :dataFechamento
      t.references :modeloContrato, index: true

      t.timestamps
    end
  end
end
