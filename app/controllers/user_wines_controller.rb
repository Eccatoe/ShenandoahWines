class UserWinesController < ApplicationController

    def create
        user = User.find(params[:user_id]) # Might already have user via auth
        user_wine_array = user.user_wines.create(user_wine_params[:selections])
        render json: user_wine_array
    end

    def index
        user_wines=UserWine.all
        render json: user_wines
    end

    def update
        user_wine=UserWine.find(params[:id])
        user_wine.photo.attach(params[:photo])
        user_wine.update!(user_wine_params)        
        render json: user_wine
    end

    def delete
        user_wine=UserWine.find(params[:id])
        user_wine.destroy
    end

    private

    def user_wine_params
        params.permit(:review, :photo, :tasted, :favorite, selections: [:wine_id])
    end
end
