class AutoSuggester

  def initial_suggestions trip
    add_items trip, 1,
      [ "Book flight", "Book hotel", "Exchange money", "Print map" ]
    add_items trip, 2,
      [ "Sun screen", "Umbrella" ]
    add_items trip, 3,
      [ "2 pair of socks", "2 underwear", "2 T-shirts", "1 Jeans",
        "1 Jacket", "1 Hat", "1 Sweater" ]
    add_items trip, 4,
      [ "Book ticket for big wheel" ]
    trip.save!
  end

  def add_items trip, category, items
    items.each do |item|
      add_item trip, category, item
    end
  end
  
  def add_item trip, category, title
    item = Item.new
    item.category = category
    item.text = title
    item.suggested = true
    item.done = false
    
    trip.items << item
  end
  
end
