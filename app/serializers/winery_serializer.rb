class WinerySerializer < ActiveModel::Serializer
  attributes :name, :link, :longitude, :latitude, :address, :description, :varietals, :image
  has_many :wines
end
