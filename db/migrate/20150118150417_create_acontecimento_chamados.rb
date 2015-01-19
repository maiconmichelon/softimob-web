class CreateAcontecimentoChamados < ActiveRecord::Migration
  def change
    create_table :acontecimento_chamados do |t|
      t.date :data
      t.references :funcionario, index: true
      t.string :descricao

      t.timestamps
    end
  end
end
