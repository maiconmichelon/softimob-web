class Estado < ActiveRecord::Base

  def to_s
    "#{uf}- #{nome}"
  end
end
