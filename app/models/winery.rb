class Winery < ApplicationRecord
    has_many :wines
    has_many :user_wines, through: :wines
    has_many :varietals, through: :wines

   

  
end
