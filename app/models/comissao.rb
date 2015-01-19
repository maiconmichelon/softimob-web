class Comissao < ActiveRecord::Base
  belongs_to :vendaAluguel
  belongs_to :comissionado
end
