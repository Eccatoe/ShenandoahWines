class TrailStopSerializer < ActiveModel::Serializer
  attributes :id, :winery_name, :winery_address, :coordinates, :winery_id
belongs_to :trail
end
