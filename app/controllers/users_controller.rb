class UsersController < ApplicationController

    def show
        render json: @user
    end

    private

    def user_params
        params.require(:username, :password, :email, :age)
    end

end
