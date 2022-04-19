class TrailStop < ApplicationRecord
  belongs_to :trail
  belongs_to :winery

  def winery_name
    self.winery.name
  end

  def winery_address
    self.winery.address
  end

  def coordinates
    [self.winery.latitude, self.winery.longitude].join(",")
  end
end




# 38.574299248125755,-78.47373826006016/38.796891100188766,-78.65195017539435/39.118166982259694,-77.91466831771595
# https://www.google.com/maps/dir/38.574299248125755,-78.47373826006016/38.796891100188766,-78.65195017539435/39.118166982259694,-77.91466831771595