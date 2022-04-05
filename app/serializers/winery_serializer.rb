class WinerySerializer < ActiveModel::Serializer
  attributes :name, :link, :longitude, :latitude, :address, :description, :image
  has_many :wines
end
