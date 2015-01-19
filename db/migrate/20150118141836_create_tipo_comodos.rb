class CreateTipoComodos < ActiveRecord::Migration
  def change
    create_table :tipo_comodos do |t|
      t.string :nome
      t.boolean :ativo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
