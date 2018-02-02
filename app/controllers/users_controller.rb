class UsersController < ApplicationController

  #skip_before_action :authenticate_user!

  def show
    @user = current_user
    @favorites = current_user.favorite_categories

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    current_user.update(params_user)
    redirect_to user_path(current_user)
  end

  def destroy
  end

  private
  def params_user
    params.require(:user).permit!
  end

  def set_user
    @user = User.find(params[:id])
  end

end
