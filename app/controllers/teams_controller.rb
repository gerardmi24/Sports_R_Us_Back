class TeamsController < ApplicationController

    # def request_api("https://api.sportsdata.io/v3/nfl/scores/json/Teams")
    #     response = Excon.get(
    #         url,
    #         headers: {
    #           'X-RapidAPI-Host' => URI.parse(url).host,
    #           'X-RapidAPI-Key' => ENV.fetch('a944b7eacd2b4dbba4c3af7dddeb0a97
    #           ')
    #         }
    #       )
    #       return nil if response.status != 200
    #       JSON.parse(response.body)
    #     end
    # end

    def index 
        teams = Team.all.order(:id)
        render json: teams
    end

    def show
        team = Team.find(params[:id])
        render json: team
    end

    def edit
        team = Team.find(params[:id])
    end

    def update
        team = Team.find(params[:id])
        team.update(team_params)
        render json: team
    end

    private

    def team_params
        params.permit(:sport_id, :team_name, :city, :roster, :coach, :sport_name)
    end

end
