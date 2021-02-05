class UsersController < ApplicationController

    def index 
        users = User.all.order(:id)
        render json: users
    end 
    
    def show
        render json: @user
    end

    private

    def user_params
        params.require(:username, :password, :email, :age)
    end

end
