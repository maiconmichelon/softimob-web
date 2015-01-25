class TipoImovel < ActiveRecord::Base
  belongs_to :empresa
  
  validates :nome, presence: true
  
  def to_s
    nome
  end
end
