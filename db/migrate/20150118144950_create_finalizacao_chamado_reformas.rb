class CreateFinalizacaoChamadoReformas < ActiveRecord::Migration
  def change
    create_table :finalizacao_chamado_reformas do |t|
      t.date :data
      t.references :funcionario, index: true
      t.string :descricaoConclusao
      t.integer :status

      t.timestamps
    end
  end
end
