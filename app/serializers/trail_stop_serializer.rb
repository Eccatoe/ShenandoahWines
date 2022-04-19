class TrailStopSerializer < ActiveModel::Serializer
  attributes :id, :winery_name, :winery_address
  # has_one :trail 
end
