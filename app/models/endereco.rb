class Endereco < ActiveRecord::Base
  belongs_to :rua

  validates :cep, :rua, presence: true
  validates :cep, length: { is: 8 }

  def estado_id
    self.rua.nil? ? nil : self.rua.bairro.municipio.estado.id
  end
  
  def municipio_id
    self.rua.nil? ? nil : self.rua.bairro.municipio.id
  end
  
  def bairro_id
    self.rua.nil? ? nil : self.rua.bairro.id
  end
  
  def to_s
    "#{rua}, #{rua.bairro.municipio}-#{rua.bairro.municipio.estado.uf}"
  end

end
