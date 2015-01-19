class CreateChamadosReforma < ActiveRecord::Migration
  def change
    create_table :chamados_reforma do |t|
      t.references :aluguel, index: true
      t.date :data
      t.references :funcionario, index: true
      t.string :problema
      t.references :finalizacaoChamadoReforma, index: true

      t.timestamps
    end
  end
end
