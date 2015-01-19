class OrigemConta < ActiveRecord::Base
  belongs_to :planoConta
  belongs_to :contaContraPartida
  belongs_to :empresa
end
