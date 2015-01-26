class PessoaJuridica < Comissionado
  belongs_to :socioProprietario, class_name: 'PessoaFisica'

  validates :cnpj, :inscricaoEstadual, :socioProprietario, presence: true
end
