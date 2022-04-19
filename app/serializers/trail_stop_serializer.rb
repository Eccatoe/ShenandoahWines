class TrailStopSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :trail_id
  has_one :trail
  has_one :winery
end
