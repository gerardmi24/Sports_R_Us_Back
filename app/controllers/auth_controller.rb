class AuthController < ApplicationController

  def register
    byebug
    register_params = params.permit(:username, :password, :email, :age)
    user = User.create(register_params)
    if user.valid?
    render json: user, status: :created
    else
      render json: {error: "Username already exists"}, status: :unprocessable_entity
    end
  end

end
