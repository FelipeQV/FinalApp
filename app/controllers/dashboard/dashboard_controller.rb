class Dashboard::DashboardController < ApplicationController
  def index
    @studios = Studio.all

  end
end
