class TrailStopSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :trail_id, :longitude
  has_one :trail
  has_one :winery
end
