class DetailsController < ApplicationController

  before_filter :find_trip
  
  def plan
    @items = Item.where( :trip_id  => @trip.id).where( :category => 1 )
    @category = 1
  end

  def weather
    @items = Item.where( :trip_id  => @trip.id).where( :category => 2 )
    @category = 2
  end

  def clothes
    @items = Item.where( :trip_id  => @trip.id).where( :category => 3 )
    @category = 3
  end

  def pictures
    @items = Item.where( :trip_id  => @trip.id).where( :category => 4 )
    @category = 4
  end

  def add_item
    category = params[:category]
    
    trip = Trip.find params[:id]
    
    item = Item.new
    item.text = params[:item_title]
    item.suggested = false
    item.done = false
    item.category = category
    
    item.save!
    trip.items << item
    trip.save!

    redirect_to_category trip, category
  end

  def edit_item
    render "add_item"
  end

  def remove_item
    item = Item.find params[:item_id]
    notice = "Deleted '#{item.text}'"
    Item.destroy params[:item_id]

    flash[:notice] = notice
    
    redirect_to_category @trip, params[:category]
  end

  private
  
  def find_trip
    @trip = Trip.find params[:id]
  end

  def redirect_to_category trip, category
    if category == "1"
      redirect_to :action => "plan", :id => trip.id
    elsif category == "2"
      redirect_to :action => "weather", :id => trip.id
    elsif category == "3"
      redirect_to :action => "clothes", :id => trip.id
    else
      redirect_to :action => "pictures", :id => trip.id
    end
  end
  
end
