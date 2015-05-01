class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :razaoSocial

      t.timestamps
    end
  end
end
