class Aluguel < VendaAluguel
  belongs_to :cliente

  validates :dataVencimento, presence: true
end
