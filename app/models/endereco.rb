class Endereco < ActiveRecord::Base
  belongs_to :rua

  validates :cep, :rua, presence: true
  validates :cep, length: { is: 8 }

  def to_s
    "#{rua}, #{rua.bairro.municipio}-#{rua.bairro.municipio.estado.uf}"
  end

end
