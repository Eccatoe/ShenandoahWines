class WinerySerializer < ActiveModel::Serializer
  attributes :id, :name, :link, :longitude, :latitude, :image
  has_many :wines
end
