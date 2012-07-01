class DetailsController < ApplicationController

  before_filter :find_trip
  
  def plan
    @items = [ "Book flight", "Book hotel", "Exchange money", "Print map" ]
  end

  def weather
    @items = [ "Sun screen", "Umbrella" ]
  end

  def clothes
    @items = [ "2 pair of socks", "2 underwear", "2 T-shirts", "1 Jeans",
               "1 Jacket", "1 Hat", "1 Sweater" ]
  end

  def pictures
    @items = [ "Book ticket for big wheel" ]
  end

  def add_item
    render "add_item"
  end

  def edit_item
    render "add_item"
  end

  def remove_item
    render "add_item"
  end

  private
  
  def find_trip
    @trip = Trip.find params[:id]
  end

end
