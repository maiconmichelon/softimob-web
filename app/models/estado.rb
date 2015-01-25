class Estado < ActiveRecord::Base
  
  validates :uf, :nome, presence: true 
  
  validates :nome, :uf, presence: true
  
  def to_s
    "#{uf}- #{nome}"
  end
end
