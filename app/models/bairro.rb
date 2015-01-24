class Bairro < ActiveRecord::Base
  belongs_to :municipio

  def to_s
    nome
  end
end
