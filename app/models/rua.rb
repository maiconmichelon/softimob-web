class Rua < ActiveRecord::Base
  belongs_to :bairro

  validates :nome, :bairro, presence: true
  
  def to_s
    nome
  end
end
