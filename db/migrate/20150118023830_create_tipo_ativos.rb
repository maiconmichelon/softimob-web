class CreateTipoAtivos < ActiveRecord::Migration
  def change
    create_table :tipo_ativos do |t|
      t.string :nome
      t.boolean :ativo

      t.timestamps
    end
  end
end
