class CreatePlanoConta < ActiveRecord::Migration
  def change
    create_table :plano_conta do |t|
      t.string :codigo
      t.string :nome
      t.integer :tipo
      t.boolean :ativo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
