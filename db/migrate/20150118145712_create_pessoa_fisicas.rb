class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.string :cpf
      t.string :rg
      t.string :filiacao
      t.integer :estadoCivil
      t.string :nacionalidade

      t.timestamps
    end
  end
end
