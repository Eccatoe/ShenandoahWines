class Trail < ApplicationRecord
  belongs_to :user
  has_many :trail_stops, dependent: :destroy
  has_many :wineries, through: :trail_stops
  validates :name, presence: true
end
