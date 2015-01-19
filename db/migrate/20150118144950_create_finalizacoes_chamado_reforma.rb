class CreateFinalizacoesChamadoReforma < ActiveRecord::Migration
  def change
    create_table :finalizacoes_chamado_reforma do |t|
      t.date :data
      t.references :funcionario, index: true
      t.string :descricaoConclusao
      t.integer :status

      t.timestamps
    end
  end
end
