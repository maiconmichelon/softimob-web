class CreateVendaAluguels < ActiveRecord::Migration
  def change
    create_table :venda_aluguels do |t|
      t.references :contratoPrestacaoServico, index: true
      t.references :modeloContrato, index: true
      t.references :cliente, index: true
      t.references :funcionario, index: true
      t.decimal12 :valor
      t.decimal2 :valor
      t.date :dataAssinaturaContrato

      t.timestamps
    end
  end
end
