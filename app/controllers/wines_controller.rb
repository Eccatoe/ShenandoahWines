class WinesController < ApplicationController
    def show
        wine=Wine.find(params[:id])
        render json: wine
    end 

    def index
        wines=Wines.all
        render json: wines
    end

    def rose
        wines=Wine.all.select{|w| w.name.include?"Rosé"}
        list=wines.collect{|w|w.winery}.uniq
        render json: list, serializer: RoseSerializer
    end


end
