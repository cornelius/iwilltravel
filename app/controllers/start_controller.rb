class StartController < ApplicationController
  def index
    @trip = Trip.new
    @trip.save!
  end

  def location
    @trip = Trip.find params[:id]
    @trip.location = params[:location]
    @trip.save!
  end
  
  def from
    @trip = Trip.find params[:id]
    @trip.from = params[:from]
    @trip.save!
  end
  
  def to
    @trip = Trip.find params[:id]
    @trip.to = params[:to]
    @trip.save!
    
    AutoSuggester.new.initial_suggestions @trip
  end

end
