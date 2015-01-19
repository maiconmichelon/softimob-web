class CreateContratosPrestacaoServico < ActiveRecord::Migration
  def change
    create_table :contratos_prestacao_servico do |t|
      t.decimal :valorImovel, precision: 12, scale: 4
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
