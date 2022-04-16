class TrailStopSerializer < ActiveModel::Serializer
  attributes :id
  has_one :trail
  has_one :winery
end
