class CreateAcontecimentosChamado < ActiveRecord::Migration
  def change
    create_table :acontecimentos_chamado do |t|
      t.date :data
      t.references :funcionario, index: true
      t.string :descricao

      t.timestamps
    end
  end
end
