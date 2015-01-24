class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
      t.string :nome
      t.boolean :ativo, required: true, default: true
      t.references :empresa, index: true, required: true

      t.timestamps
    end
  end
end
