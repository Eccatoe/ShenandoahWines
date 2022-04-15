class WinerySerializer < ActiveModel::Serializer
  attributes :id, :name, :link, :longitude, :latitude, :image, :description
  has_many :wines
end
