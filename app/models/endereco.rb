class Endereco < ActiveRecord::Base
  belongs_to :rua
  
  validates :cep, :rua, presence: true 
  
end
