class CreateVendasAlugueis < ActiveRecord::Migration
  def change
    create_table :vendas_alugueis do |t|
      t.references :contratoPrestacaoServico, index: true
      t.references :modeloContrato, index: true
      t.references :cliente, index: true, null: false
      t.references :funcionario, index: true, null: false
      t.decimal :valor, precision: 12, scale: 2, null: false
      t.date :dataAssinaturaContrato, null: false
      t.string :type, null: false
      
      # Vendas
      t.references :proprietario, index: true
      t.boolean :fechado
      
      # Aluguéis
      t.references :cliente, index: true
      t.date :dataVencimento
      t.references :indice, index: true
      t.boolean :resolvido
      t.date :dataFechamento
      
      t.timestamps
    end
  end
end
