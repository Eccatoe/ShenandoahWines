class Varietal < ApplicationRecord
    has_many :wines
    has_many :wineries, through: :wines
end
