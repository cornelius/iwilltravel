class HomeController < ApplicationController
  def index
    @trip = Trip.find params[:id]

    @items1 = Item.where( :trip_id  => @trip.id).where( :category => 1 )
    @items2 = Item.where( :trip_id  => @trip.id).where( :category => 2 )
    @items3 = Item.where( :trip_id  => @trip.id).where( :category => 3 )
    @items4 = Item.where( :trip_id  => @trip.id).where( :category => 4 )
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
