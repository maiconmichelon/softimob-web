class CreateComissionados < ActiveRecord::Migration
  def change
    create_table :comissionados do |t|
      t.string :nome
      t.string :telefone
      t.string :celular
      t.string :email
      t.date :dataNascimento
      t.boolean :ativo, default: true, null: false
      t.references :endereco, index: true, null: false
      t.references :empresa, default: 1 , index: true, null: false

      # Funcionário
      t.references :departamento, index: true
      t.date :dataAdmissao

      # Pessoa Física
      t.string :cpf
      t.string :rg
      t.string :filiacao
      t.integer :estadoCivil
      t.string :nacionalidade

      # Pessoa Jurídica
      t.string :cnpj
      t.string :inscricaoEstadual
      t.references :socioProprietario, index: true

      t.string :type

      t.timestamps
    end
  end
end
