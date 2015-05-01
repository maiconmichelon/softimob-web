class Empresa < ActiveRecord::Base
  has_many :usuarioEmpresas
  has_many :usuarios, :through => :usuarioEmpresas

  validates :razaoSocial, presence: true

end
