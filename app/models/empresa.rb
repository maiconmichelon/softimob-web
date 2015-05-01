class Empresa < ActiveRecord::Base
  has_many :usuarioEmpresas
  has_many :usuarios, :through => :usuarioEmpresas
  has_many :clientes
  has_many :imoveis

  validates :razaoSocial, presence: true

end
