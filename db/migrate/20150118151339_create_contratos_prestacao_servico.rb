class CreateContratosPrestacaoServico < ActiveRecord::Migration
  def change
    create_table :contratos_prestacao_servico do |t|
      t.decimal :valorImovel, precision: 12, scale: 4
      t.integer :tipo, null: false
      t.references :imovel, index: true, null: false
      t.boolean :divulgar, null: false, default: true
      t.date :dataInicio, null: false
      t.date :dataVencimento, null: false
      t.references :funcionario, index: true, null: false
      t.references :cliente, index: true, null: false
      t.boolean :resolvido, null: false, default: false
      t.date :dataFechamento, null: false
      t.references :modeloContrato, index: true

      t.timestamps
    end
  end
end
