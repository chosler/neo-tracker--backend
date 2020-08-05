class Api::V1::UserTrackedObjectsController < ApplicationController

    def index
        utos = UserTrackedObject.all
        render json: utos
    end
end
