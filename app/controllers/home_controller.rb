class HomeController < ApplicationController
  def index
    @trip = Trip.find params[:id]
  end
  
  def settings
    render :layout => "application"
  end

  def suggestions
    if params[:id]
      @trip_id = params[:id]
    end
    render :layout => "application"
  end
end
