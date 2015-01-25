class Placa < ActiveRecord::Base
  belongs_to :responsavel, class_name: 'Funcionario'
  belongs_to :empresa
  belongs_to :imovel
  
  validates :numero, presence: true
end
