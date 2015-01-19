class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.references :departamento, index: true
      t.date :dataAdmissao

      t.timestamps
    end
  end
end
