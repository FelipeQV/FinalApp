class CategoriesController < ApplicationController

   def index
    @categories = Category.all

  end

  def show
    @category = Category.find(params[:id])
  end

  #d = Category.find( current_user.favorite_category_ids)

end
