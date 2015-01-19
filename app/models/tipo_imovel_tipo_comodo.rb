class TipoImovelTipoComodo < ActiveRecord::Base
  belongs_to :tipoImovel
  belongs_to :tipoComodo
end
