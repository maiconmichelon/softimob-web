class Comissionado < ActiveRecord::Base
  after_initialize :instanciar_endereco

  belongs_to :endereco
  belongs_to :empresa

  accepts_nested_attributes_for :endereco

  validates :nome, :telefone, :email, presence: true
  validates :email, :email => true
  validates :telefone, length: { is: 10 }

  def to_s
    nome
  end

  private

  def instanciar_endereco
    self.endereco ||= Endereco.new
  end

end
