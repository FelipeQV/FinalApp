class StudiosController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]

  def index
    @studios = Studio.all
  end

  def show
  end

  def new
    @user = current_user
    @studio = Studio.new

  end


  def create
    @studio = Studio.new(studio_params)
    @studio.user = current_user


    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  def edit
  end

  def update
        if @studio.update(studio_params)
      redirect_to studio_params(@studio)
    else
      render :edit
  end
end

  def destroy
    @studio.destroy
    redirect_to studio_path(@studio)
  end

  private

  def studio_params
    params.require(:studio).permit( :current_user, :name, :description, :phone)
  end

   def set_studio
    @studio = Studio.find(params[:id])
  end
end
