class CreateModelosContrato < ActiveRecord::Migration
  def change
    create_table :modelos_contrato do |t|
      t.string :nome
      t.references :empresa, index: true
      t.boolean :ativo

      t.timestamps
    end
  end
end
