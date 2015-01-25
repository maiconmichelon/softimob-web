class ModeloContrato < ActiveRecord::Base
  belongs_to :empresa
  
  validates :nome, presence: true
end
