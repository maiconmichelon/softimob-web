class CreateFinalizacoesChamadoReforma < ActiveRecord::Migration
  def change
    create_table :finalizacoes_chamado_reforma do |t|
      t.date :data, required: true
      t.references :responsavel, index: true
      t.string :descricaoConclusao, required: true
      t.integer :status, required: true

      t.timestamps
    end
  end
end
