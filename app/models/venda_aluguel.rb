class VendaAluguel < ActiveRecord::Base
  belongs_to :contratoPrestacaoServico
  belongs_to :modeloContrato
  belongs_to :cliente
  belongs_to :funcionario
  
  validates :contratoPrestacaoServico, :modeloContrato, :cliente, :funcionario, :dataAssinaturaContrato, :valor, presence: true
end
