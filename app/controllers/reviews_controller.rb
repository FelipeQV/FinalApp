class ReviewsController < ApplicationController

  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
    @review.course = @course
    @review.user = current_user
  end

  def create
    @review = Review.new(review_params)
    @course = Course.find(params[:course_id])
    @review.course = @course
    @review.user = current_user

    if @review.save
      redirect_to course_path(@course)
    else
      render :new

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_review
    @review = Course.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:course_id, :content, :stars, :user_id)
  end
end
end
