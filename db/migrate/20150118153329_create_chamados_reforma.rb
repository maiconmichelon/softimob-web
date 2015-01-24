class CreateChamadosReforma < ActiveRecord::Migration
  def change
    create_table :chamados_reforma do |t|
      t.references :aluguel, index: true, required: true
      t.date :data, required: true
      t.references :funcionario, index: true
      t.string :problema, required: true
      t.references :finalizacaoChamadoReforma, index: true

      t.timestamps
    end
  end
end
