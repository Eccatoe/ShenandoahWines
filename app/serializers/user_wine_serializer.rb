class UserWineSerializer < ActiveModel::Serializer
  attributes :id, :review, :favorite, :tasted

  belongs_to :user
  belongs_to :wine
end