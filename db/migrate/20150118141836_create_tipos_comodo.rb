class CreateTiposComodo < ActiveRecord::Migration
  def change
    create_table :tipos_comodo do |t|
      t.string :nome
      t.boolean :ativo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
