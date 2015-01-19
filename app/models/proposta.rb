class Proposta < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :proposta
  belongs_to :imovel
end
