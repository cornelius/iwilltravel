class HomeController < ApplicationController
  def index
    @trip = Trip.find params[:id]
  end
end
