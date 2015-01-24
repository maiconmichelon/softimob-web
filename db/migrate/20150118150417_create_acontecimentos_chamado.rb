class CreateAcontecimentosChamado < ActiveRecord::Migration
  def change
    create_table :acontecimentos_chamado do |t|
      t.date :data, required: true
      t.references :funcionario, index: true
      t.string :descricao
      t.belongs_to :chamado_reforma, index: true, required: true

      t.timestamps
    end
  end
end
