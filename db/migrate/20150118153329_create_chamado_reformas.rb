class CreateChamadoReformas < ActiveRecord::Migration
  def change
    create_table :chamado_reformas do |t|
      t.references :aluguel, index: true
      t.date :data
      t.references :funcionario, index: true
      t.string :problema
      t.references :finalizacaoChamadoReforma, index: true

      t.timestamps
    end
  end
end
