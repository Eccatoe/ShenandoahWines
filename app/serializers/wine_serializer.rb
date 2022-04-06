class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :winery_id
  belongs_to :varietal
end
