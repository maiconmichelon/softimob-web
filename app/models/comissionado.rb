class Comissionado < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :empresa

  def to_s
    nome
  end
end
