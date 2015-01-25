class ContratoPrestacaoServico < ActiveRecord::Base
  belongs_to :imovel
  belongs_to :funcionario
  belongs_to :cliente
  belongs_to :modeloContrato
  
  validates :valorImovel, :tipo, :dataInicio, :dataVencimento, :cliente, :modeloContrato, presence: true
  
end
