class ItemCheckList < ActiveRecord::Base
  belongs_to :checkList
  
  validates :nome, :obrigatorio, :finalizado, presence: true
end
