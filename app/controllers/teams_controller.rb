class TeamsController < ApplicationController

    def index 
        teams = Team.all.order(:id)
        render json: teams
    end 

end
