class Trail < ApplicationRecord
  belongs_to :user
  has_many :trail_stops
  has_many :wineries, through: :trail_stops
end
