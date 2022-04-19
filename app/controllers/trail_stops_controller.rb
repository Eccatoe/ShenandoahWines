class TrailStopsController < ApplicationController

    def create
       trail_stop=TrailStop.create!(trail_stop_params)
    end

    private

    def trail_stop_params
        params.permit(:latitude, :longitude, :winery_id, :trail_id)
    end
end
