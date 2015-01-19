class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.string :nome
      t.boolean :ativo

      t.timestamps
    end
  end
end
