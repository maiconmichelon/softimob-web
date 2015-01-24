class CreateTiposComodo < ActiveRecord::Migration
  def change
    create_table :tipos_comodo do |t|
      t.string :nome
      t.boolean :ativo, default: true, null: false
      t.references :empresa, index: true, null: false

      t.timestamps
    end
  end
end
