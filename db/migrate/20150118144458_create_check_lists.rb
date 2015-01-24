class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
      t.string :nome
      t.boolean :ativo, null: false, default: true
      t.references :empresa, index: true, null: false

      t.timestamps
    end
  end
end
