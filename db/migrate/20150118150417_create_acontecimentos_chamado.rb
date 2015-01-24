class CreateAcontecimentosChamado < ActiveRecord::Migration
  def change
    create_table :acontecimentos_chamado do |t|
      t.date :data, null: false
      t.references :funcionario, index: true
      t.string :descricao
      t.belongs_to :chamado_reforma, index: true, null: false

      t.timestamps
    end
  end
end
