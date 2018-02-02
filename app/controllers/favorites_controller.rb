class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(user: current_user)
    category = Category.find(params["category_id"])
    favorite.category = category
    if favorite.save
      redirect_to categories_path
      flash[:notice] = "Succesfully favorited #{category.name}"
    else
      flash[:danger] = "Something went wrong"
    end
  end

  def show
  end


end
