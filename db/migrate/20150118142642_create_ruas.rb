class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome
      t.references :bairro, index: true

      t.timestamps
    end
  end
end
