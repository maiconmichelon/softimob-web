class ChamadoReforma < ActiveRecord::Base
  belongs_to :aluguel
  belongs_to :funcionario
  belongs_to :finalizacaoChamadoReforma
  
  validates :data, :problema, presence: true
  
end
