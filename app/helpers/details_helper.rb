module DetailsHelper
  
  def details_status items
    if items
      "0/#{items.count} done"
    else
      "undefined"
    end
  end

end
