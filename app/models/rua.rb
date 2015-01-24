class Rua < ActiveRecord::Base
  belongs_to :bairro

  def to_s
    nome
  end
end
