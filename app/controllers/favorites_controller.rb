class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all.order(:id)
        render json: favorites
    end

    def show favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def edit
        favorite = Favorite.find(params[:id])
    end

    def update
        favorite = Favorite.find(params[:id])
        favorite.update(fav_params)
        render json: favorite
    end

    def new
        favorite = Favorite.new
    end

    def create
        favorite = Favorite.create!(fav_params)
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end

    private

    def fav_params
        params.require(:favorite).permit(:user_id, team_id)
    end

end
