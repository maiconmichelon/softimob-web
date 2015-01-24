class CreateModelosContrato < ActiveRecord::Migration
  def change
    create_table :modelos_contrato do |t|
      t.string :nome
      t.references :empresa, default: 1 , index: true
      t.boolean :ativo, null: false, default: true

      t.timestamps
    end
  end
end
