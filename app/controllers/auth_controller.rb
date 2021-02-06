class AuthController < ApplicationController
  def register
    user = User.create(register_params)
    if user.valid?
    render json: user
    else
      render json: {error: "Username already exists"}, status :unprocessable_entity
    end
  end

end
