class Wine < ApplicationRecord
    belongs_to :winery
    belongs_to :varietal
    has_many :user_wines
    has_many :users, through: :user_wines
end
