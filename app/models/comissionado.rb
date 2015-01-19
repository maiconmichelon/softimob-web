class Comissionado < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :empresa
end
