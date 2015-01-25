class AcontecimentoChamado < ActiveRecord::Base
  belongs_to :funcionario
  
  validates :descricao, :data, presence: true
end
