class CreateTiposAtivo < ActiveRecord::Migration
  def change
    create_table :tipos_ativo do |t|
      t.string :nome
      t.boolean :ativo

      t.timestamps
    end
  end
end
