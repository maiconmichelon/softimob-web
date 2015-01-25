class Municipio < ActiveRecord::Base
  belongs_to :estado

  validates :estado, :nome, presence: true
  
  def to_s
    nome
  end

end
