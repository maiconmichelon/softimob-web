class CreatePlacas < ActiveRecord::Migration
  def change
    create_table :placas do |t|
      t.string :numero
      t.references :funcionario, index: true
      t.references :empresa, index: true
      t.references :imovel, index: true

      t.timestamps
    end
  end
end
