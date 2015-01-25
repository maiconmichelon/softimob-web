class Empresa < ActiveRecord::Base
  
  validates :razaoSocial, :cnpj, presence: true  
  
end
