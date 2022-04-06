class UserWinesController < ApplicationController

    def create
        user_wine=UserWine.create!(user_id: 1, user_wine_params)
        render json: user_wine
    end

    private

    def user_wine_params
        params.permit(:wine_id, :review, :name)
    end
end
