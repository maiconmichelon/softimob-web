class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nome
      t.boolean :obrigatorio

      t.timestamps
    end
  end
end
