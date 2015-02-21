class Imovel < ActiveRecord::Base
  after_initialize :instanciar_endereco

  belongs_to :angariador, class_name: 'Funcionario'
  belongs_to :proprietario, class_name: 'Cliente'
  belongs_to :tipoImovel
  belongs_to :endereco
  belongs_to :empresa

  accepts_nested_attributes_for :endereco

  validates :proprietario, :tipoImovel, presence: true

  private

  def instanciar_endereco
    self.endereco ||= Endereco.new
  end

end
