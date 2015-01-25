class Comodo < ActiveRecord::Base
  belongs_to :tipoComodo
  belongs_to :imovel
  
  validates :quantidade, :tipoComodo, presence: true
  validates :quantidade, numericality: true, greater_than_or_equal_to: 1
  
end
