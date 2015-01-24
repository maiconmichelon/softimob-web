class Reserva < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :angariador, class_name: 'Funcionario'
  belongs_to :imovel
end
