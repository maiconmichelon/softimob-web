class CreateUsuarioEmpresas < ActiveRecord::Migration
  def change
    create_table :usuario_empresas do |t|
      t.references :usuario, index: true, null: false
      t.references :empresa, index: true, null: false
      t.boolean :admin, default: false

      t.timestamps
    end

    add_index :usuario_empresas, [:usuario_id, :empresa_id]
  end
end
