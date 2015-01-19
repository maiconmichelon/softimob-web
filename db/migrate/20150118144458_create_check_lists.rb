class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
      t.string :nome
      t.boolean :ativo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
