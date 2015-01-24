class CreateVistorias < ActiveRecord::Migration
  def change
    create_table :vistorias do |t|
      t.date :data, null: false
      t.references :funcionario, index: true
      t.string :observacoes
      t.references :vendaAluguel, index: true

      t.timestamps
    end
  end
end
