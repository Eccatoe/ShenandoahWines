class User < ApplicationRecord
    has_many :user_wines
    has_many :trails
    has_many :wines, through: :user_wines
end
