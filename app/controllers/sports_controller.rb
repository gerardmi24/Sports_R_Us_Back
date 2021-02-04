class SportsController < ApplicationController

    def index 
        sports = Sport.all.order(:id)
        render json: sports
    end 

end
