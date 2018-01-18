class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
    @course = Course.find(params[:course_id])
  end

  def create
    @course = Course.find(params[:course_id])
    @review = Review.new(review_params)
    @review.course = @course
    @review.user = current_user

    if @review.save
      redirect_to course_path(@course)
    else
      render 'courses/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


  def review_params
    params.require(:review).permit(:course_id, :content, :stars, :user_id)
  end
end

