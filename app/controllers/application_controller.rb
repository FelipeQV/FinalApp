class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_contact!
  devise_group :user, contains: [:student, :teacher]
end
