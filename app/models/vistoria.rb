class Vistoria < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :vendaAluguel
end
