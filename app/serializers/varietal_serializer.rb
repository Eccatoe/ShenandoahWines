class VarietalSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasting_notes, :picture, :native_grape
  has_many :wines
end
