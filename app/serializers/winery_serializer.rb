class WinerySerializer < ActiveModel::Serializer
  attributes :name, :link, :longitude, :latitude, :address, :description
  has_many :wines
end
