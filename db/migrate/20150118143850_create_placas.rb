class CreatePlacas < ActiveRecord::Migration
  def change
    create_table :placas do |t|
      t.string :numero
      t.references :responsavel, index: true
      t.references :empresa, default: 1 , index: true, null: false
      t.references :imovel, index: true
      t.boolean :ativo, null: false, default: true

      t.timestamps
    end
  end
end
