class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :trail_stops
  has_one :user
end

