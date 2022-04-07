class UserWineSerializer < ActiveModel::Serializer
  attributes :id,:review
  belongs_to :user
  belongs_to :wine
end
