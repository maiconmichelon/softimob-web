class FinalizacaoChamadoReforma < ActiveRecord::Base
  belongs_to :funcionario
  
  validates :descricaoConclusao, :data, :status, presence: true
  validates :data, date: { before: Proc.new { Time.now } }
  
end
