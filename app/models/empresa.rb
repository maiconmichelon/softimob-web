class Empresa < ActiveRecord::Base
  has_many :usuarioempresas
  has_many :usuarios, :through => :usuarioempresas

  validates :razaoSocial, :cnpj, presence: true

end
