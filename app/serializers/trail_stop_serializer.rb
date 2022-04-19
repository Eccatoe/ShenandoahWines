class TrailStopSerializer < ActiveModel::Serializer
  attributes :id, :winery_name, :winery_address, :coordinates
  # has_one :trail 
end
