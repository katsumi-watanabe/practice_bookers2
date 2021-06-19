class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
  end

  def edit
  end

  def index
    @user = User.new
    @users = User.all
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
