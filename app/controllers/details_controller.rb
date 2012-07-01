class DetailsController < ApplicationController

  before_filter :find_trip
  
  def plan
    @items = Item.where( :trip_id  => @trip.id).where( :category => 1 )
  end

  def weather
    @items = Item.where( :trip_id  => @trip.id).where( :category => 2 )
  end

  def clothes
    @items = Item.where( :trip_id  => @trip.id).where( :category => 3 )
  end

  def pictures
    @items = Item.where( :trip_id  => @trip.id).where( :category => 4 )
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
