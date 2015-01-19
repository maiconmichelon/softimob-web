class CreateItens < ActiveRecord::Migration
  def change
    create_table :itens do |t|
      t.string :nome
      t.boolean :obrigatorio

      t.timestamps
    end
  end
end
