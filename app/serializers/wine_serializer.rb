class WineSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :varietal
end
