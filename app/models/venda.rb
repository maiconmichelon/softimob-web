class Venda < VendaAluguel
  belongs_to :proprietario
  
  validates :proprietario, presence: true
end
