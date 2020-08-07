class Api::V1::UserTrackedObjectsController < ApplicationController

    def index
        utos = UserTrackedObject.all
        render json: utos
    end

    def create
        tracked = UserTrackedObject.create(tracked_params)
        render json: tracked
    end

    def destroy
        tracked = UserTrackedObject.find(params[:id])
        tracked.destroy
    end

    private

    def tracked_params
        params.permit(:user_id, :near_earth_object_id, :exoplanet_id)
    end 
end
