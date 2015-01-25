class Comissionado < ActiveRecord::Base
  after_initialize :instanciar_endereco

  belongs_to :endereco
  belongs_to :empresa
  
  accepts_nested_attributes_for :endereco

  def to_s
    nome
  end

  private

  def instanciar_endereco
    self.endereco ||= Endereco.new
    self.nome ||= '999'
  end

end
