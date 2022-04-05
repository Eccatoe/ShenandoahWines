class Winery < ApplicationRecord
    has_many :wines
    has_many :varietals, through: :wines
end
