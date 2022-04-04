class WineriesController < ApplicationController

    def index
        render json: Winery.all
    end
end
