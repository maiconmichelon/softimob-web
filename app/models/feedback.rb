class Feedback < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :cliente
  belongs_to :imovel
end
