class Aluguel < VendaAluguel
  belongs_to :cliente
  belongs_to :indice
end
