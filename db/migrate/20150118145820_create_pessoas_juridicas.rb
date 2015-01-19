class CreatePessoasJuridicas < ActiveRecord::Migration
  def change
    create_table :pessoas_juridicas do |t|
      t.string :cnpj
      t.string :inscricaoEstadual
      t.references :pessoaFisica, index: true

      t.timestamps
    end
  end
end
