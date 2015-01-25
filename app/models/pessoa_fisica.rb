class PessoaFisica < ActiveRecord::Base
  
  validates :cpf, :rg, :estadoCivil, :nacionalidade, presence: true
  
end
