class CoursesController < ApplicationController

  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @review = Review.new
    set_category
  end

  def new
    @studio = Studio.find(params[:studio_id])
    @course = Course.new
    @course.studio = @studio
    @categories = Category.all
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @course = Course.new(course_params)
    @course.studio = @studio

    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:studio_id, :name, :description, category_ids: [])
  end
end
