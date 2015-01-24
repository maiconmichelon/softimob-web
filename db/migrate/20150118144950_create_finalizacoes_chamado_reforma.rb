class CreateFinalizacoesChamadoReforma < ActiveRecord::Migration
  def change
    create_table :finalizacoes_chamado_reforma do |t|
      t.date :data, null: false
      t.references :responsavel, index: true
      t.string :descricaoConclusao, null: false
      t.integer :status, null: false

      t.timestamps
    end
  end
end
