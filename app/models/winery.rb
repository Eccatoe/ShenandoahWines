class Winery < ApplicationRecord
    has_many :wines
    has_many :trail_stops
    has_many :user_wines, through: :wines
    has_many :varietals, through: :wines
    has_many :trails, through: :trail_stops

   

  
end
