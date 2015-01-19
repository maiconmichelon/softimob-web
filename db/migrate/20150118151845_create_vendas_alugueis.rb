class CreateVendasAlugueis < ActiveRecord::Migration
  def change
    create_table :vendas_alugueis do |t|
      t.references :contratoPrestacaoServico, index: true
      t.references :modeloContrato, index: true
      t.references :cliente, index: true
      t.references :funcionario, index: true
      t.decimal :valor, precision: 12, scale: 2
      t.date :dataAssinaturaContrato

      t.timestamps
    end
  end
end
