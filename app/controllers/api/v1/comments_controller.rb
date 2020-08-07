class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comm_params)
        render json: comment
    end

    def delete
        comment = Comment.find(params[:id])
        comment.destroy
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comm_params)
        render json: comment
    end

    private

    def comm_params
        params.permit(:user_id, :near_earth_object_id, :exoplanet_id, :comm_content)
    end
    
end
