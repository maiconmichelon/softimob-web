class Aluguel < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :indice
end
