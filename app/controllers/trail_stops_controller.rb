class TrailStopsController < ApplicationController

    def index
        trail_stops=TrailStop.all
        render json: trail_stops
    end
    def create
       trail_stop=TrailStop.create!(trail_stop_params)
       render json: trail_stop
    end
    def destroy
        trail_stop=TrailStop.find(params[:id])
        trail_stop.destroy
    end

    private

    def trail_stop_params
        params.permit(:latitude, :longitude, :winery_id, :trail_id)
    end
end
