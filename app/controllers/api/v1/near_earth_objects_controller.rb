class Api::V1::NearEarthObjectsController < ApplicationController

    def index
        neos = NearEarthObject.all
        render json: neos
    end

    def show
        neo = NearEarthObject.find(params[:id])
        render json: neo
    end
end
