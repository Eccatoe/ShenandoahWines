class WinesController < ApplicationController
    def show
        wine=Wine.find(params[:id])
        render json: wine
    end 

    def index
        wines=Wines.all
        render json: wines
    end




end
