class Reserva < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :imovel
end
