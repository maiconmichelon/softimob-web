class LancamentoContabil < ActiveRecord::Base
  belongs_to :planoConta
  belongs_to :movimentacaoContabil
end
