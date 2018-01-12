class PagesController < ApplicationController
  #skip_before_action :authenticate_contact!, only: [:home]

  def home
@studios = Studio.all
  end
end
