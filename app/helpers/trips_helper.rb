module TripsHelper

  def trip_date_range trip
    f = trip.from
    t = trip.to
    out = f.strftime( "%B #{f.day.ordinalize}" )
    if f.year != t.year
      out += " 2012"
    end
    out += " -"
    if f.year != t.year || f.month != t.month
      out += t.strftime(" %B")
    end
    out += t.strftime( " #{t.day.ordinalize} %Y" )
  end
  
  def trip_title trip
    if trip.valid?
      "#{trip.location}, #{trip_date_range(trip)}, " +
      "#{distance_of_time_in_words(trip.from, trip.to)}"
    else
      "Invalid trip data"
    end
  end

end
