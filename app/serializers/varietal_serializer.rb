class VarietalSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasting_notes, :image, :native_grape
end
