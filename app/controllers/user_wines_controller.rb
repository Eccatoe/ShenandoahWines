class UserWinesController < ApplicationController
    
    def create
        user_wine_array = @user.user_wines.create(user_wine_params[:selections])
        
        render json: user_wine_array
    end

    def index 
        user_wines = @user.user_wines.all
        render json: user_wines
    end

    def show
        user_wine=UserWine.find(params[:id])
        render json: user_wine
    end

   
    def update
        user_wine=UserWine.find(params[:id])
        user_wine.update!(user_wine_params)
        render json: user_wine
    end

    def delete
        user_wine=UserWine.find(params[:id])
        user_wine.destroy
    end

    private

    def user_wine_params
        # params.permit(:review, :photo, :tasted, :favorite, selections: [:wine_id])
        params.permit(:review, :tasted, :favorite, selections: [:wine_id])
    end
end
