class CreateChamadosReforma < ActiveRecord::Migration
  def change
    create_table :chamados_reforma do |t|
      t.references :aluguel, index: true, null: false
      t.date :data, null: false
      t.references :funcionario, index: true
      t.string :problema, null: false
      t.references :finalizacaoChamadoReforma, index: true

      t.timestamps
    end
  end
end
