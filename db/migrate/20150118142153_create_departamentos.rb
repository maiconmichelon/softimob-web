class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nome
      t.boolean :ativo, default: true, null: false
      t.references :empresa, default: 1 , index: true, null: false

      t.timestamps
    end
  end
end
