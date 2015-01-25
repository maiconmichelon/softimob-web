class Bairro < ActiveRecord::Base
  belongs_to :municipio

  validates :nome, :municipio, presence: true
  
  def to_s
    nome
  end
end
