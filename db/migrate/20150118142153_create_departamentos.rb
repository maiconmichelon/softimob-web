class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nome
      t.boolean :ativo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
