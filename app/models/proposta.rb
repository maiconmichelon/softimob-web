class Proposta < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :proposta
  belongs_to :imovel
  
  validates :data, :cliente, :valor, :tipoContraProposta, presence: true
  validates :data, date: { before: Proc.new { Time.now } }
  
end
