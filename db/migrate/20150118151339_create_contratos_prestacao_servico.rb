class CreateContratosPrestacaoServico < ActiveRecord::Migration
  def change
    create_table :contratos_prestacao_servico do |t|
      t.decimal :valorImovel, precision: 12, scale: 4
      t.integer :tipo, required: true
      t.references :imovel, index: true, required: true
      t.boolean :divulgar, required: true, default: true
      t.date :dataInicio, required: true
      t.date :dataVencimento, required: true
      t.references :funcionario, index: true, required: true
      t.references :cliente, index: true, required: true
      t.boolean :resolvido, required: true, default: false
      t.date :dataFechamento, required: true
      t.references :modeloContrato, index: true

      t.timestamps
    end
  end
end
