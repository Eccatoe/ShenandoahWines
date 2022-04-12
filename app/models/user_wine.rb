class UserWine < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  has_one_attached :photo
end
