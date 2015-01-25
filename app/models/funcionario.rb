class Funcionario < Comissionado
  belongs_to :departamento
  
  validates :departamento, presence: true
end
