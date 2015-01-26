class Estado < ActiveRecord::Base
  belongs_to :empresa

  validates :uf, :nome, presence: true
  
  def to_s
    "#{uf}- #{nome}"
  end
end
