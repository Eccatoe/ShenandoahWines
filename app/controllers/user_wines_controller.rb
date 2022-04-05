class UserWinesController < ApplicationController

    def create
        user_wine=UserWine.create!(user_wine_params)
        render json: user_wine
    end

    private

    def user_wine_params
        params.permit(:wine_id, :user_id, :review)
    end
end
