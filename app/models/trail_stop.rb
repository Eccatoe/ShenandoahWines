class TrailStop < ApplicationRecord
  belongs_to :trail
  belongs_to :winery

  def winery_name
    self.winery.name
  end

  def winery_address
    self.winery.address
  end
end
