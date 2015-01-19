class Imovel < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :cliente
  belongs_to :tipoImovel
  belongs_to :endereco
  belongs_to :empresa
end
