class Placa < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :empresa
  belongs_to :imovel
end
