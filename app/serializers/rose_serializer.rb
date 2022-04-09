class RoseSerializer < ActiveModel::Serializer
  attributes :id, :coordinates, :name

  def coordinates
    lat=self.latitude
    long=self.longitude
    Array[long, lat]
end

end
