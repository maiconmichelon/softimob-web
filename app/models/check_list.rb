class CheckList < ActiveRecord::Base
  belongs_to :empresa
  
  validates :nome, presence: true
end
