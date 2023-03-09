class UsersController < ApplicationController
  def create
    user = User.new
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end
  
  def show
  user = User.find_by_id(params[:id])
  if user
    render json: user
  else
    head 404
  end
end

  private

  def find_user_params
    # params.require(:user).find_by_id(params[:id])
  end
end
