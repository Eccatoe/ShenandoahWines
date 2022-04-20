class Winery < ApplicationRecord
    has_many :wines, dependent: :destroy
    has_many :trail_stops, dependent: :destroy
    has_many :user_wines, through: :wines, dependent: :destroy
    has_many :varietals, through: :wines
    has_many :trails, through: :trail_stops

   

  
end
