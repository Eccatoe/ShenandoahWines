class TrailStop < ApplicationRecord
  belongs_to :trail
  belongs_to :winery
end
