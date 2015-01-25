class Chave < ActiveRecord::Base
  belongs_to :imovel
  
  validates :numero, :localizacao, presence: true
end
