require 'test_helper'

class TripsHelperTest < ActionView::TestCase
  
  test "format date range" do
    t = Trip.new
    t.from = Date.parse "2012-06-29"
    t.to = Date.parse "2012-07-01"
    
    assert_equal "June 29th - July 1st 2012", trip_date_range( t )

    t.to = Date.parse "2012-06-30"
    assert_equal "June 29th - 30th 2012", trip_date_range( t )
    
    t.to = Date.parse "2013-06-30"
    assert_equal "June 29th 2012 - June 30th 2013", trip_date_range( t )
    
  end

end
