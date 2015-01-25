class PessoaJuridica < ActiveRecord::Base
  belongs_to :pessoaFisica
  
  validates :cnpj, :inscricaoEstadual, :socioProprietario, presence: true
end
