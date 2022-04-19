class TrailsController < ApplicationController
    def create
        trail=Trail.create!(trail_params)
        render json: trail
    end

    def index
        trails=Trail.all
        render json: trails
    end
    private

    def trail_params
        params.permit(:name, :user_id)
    end
end
