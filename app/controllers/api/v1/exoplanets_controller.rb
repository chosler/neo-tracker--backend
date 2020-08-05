class Api::V1::ExoplanetsController < ApplicationController

    def index
        exos = Exoplanet.all
        render json: exos
    end

    def show
        exo = Exoplanet.find(params[:id])
        render json: exo
    end
end
