class CreatePessoaJuridicas < ActiveRecord::Migration
  def change
    create_table :pessoa_juridicas do |t|
      t.string :cnpj
      t.string :inscricaoEstadual
      t.references :pessoaFisica, index: true

      t.timestamps
    end
  end
end
