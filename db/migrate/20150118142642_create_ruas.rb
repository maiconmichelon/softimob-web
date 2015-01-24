class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome, null: false
      t.references :bairro, index: true, required: true

      t.timestamps
    end
  end
end
