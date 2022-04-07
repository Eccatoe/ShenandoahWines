class VarietalSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasting_notes, :picture
  has_many :wineries
end
