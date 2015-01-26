class PessoaFisica < Comissionado
  validates :cpf, :rg, :estadoCivil, :nacionalidade, presence: true

end
