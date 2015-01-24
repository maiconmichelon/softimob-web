class Municipio < ActiveRecord::Base
  belongs_to :estado

  def to_s
    nome
  end

end
