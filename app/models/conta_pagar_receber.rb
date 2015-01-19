class ContaPagarReceber < ActiveRecord::Base
  belongs_to :OrigemConta
  belongs_to :movimentacaoContabil
end
