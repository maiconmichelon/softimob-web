class Imovel < ActiveRecord::Base
  belongs_to :angariador, class_name: 'Funcionario'
  belongs_to :proprietario, class_name: 'Cliente'
  belongs_to :tipoImovel
  belongs_to :endereco
  belongs_to :empresa

  accepts_nested_attributes_for :endereco

  validates :proprietario, :tipo, presence: true

  def initialize
    endereco = Endereco.new
  end

end
