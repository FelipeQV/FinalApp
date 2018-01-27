class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_category
       @categories = Category.all
  end

end
