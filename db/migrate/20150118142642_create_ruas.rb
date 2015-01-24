class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome, null: false
      t.references :bairro, index: true, null: false

      t.timestamps
    end
  end
end
