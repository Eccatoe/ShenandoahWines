class User < ApplicationRecord
    has_many :user_wines, dependent: :destroy
    has_many :trails, dependent: :destroy
    has_many :wines, through: :user_wines
end
