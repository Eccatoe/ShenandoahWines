class VarietalsController < ApplicationController

    def index
        varietals=Varietal.all
        render json: varietals
    end
end
