class Feedback < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :cliente
  belongs_to :imovel
  
  validates :data, :cliente, :observacoes, presence: true
  validates :data, date: { before: Proc.new { Time.now } }
  
end
