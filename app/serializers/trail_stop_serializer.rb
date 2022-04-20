class TrailStopSerializer < ActiveModel::Serializer
  attributes :id, :winery_name, :winery_address, :coordinates
belongs_to :winery
belongs_to :trail
end
