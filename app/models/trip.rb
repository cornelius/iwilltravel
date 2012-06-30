class Trip < ActiveRecord::Base
  has_many :items
  
  def complete?
    location && from && to
  end
end
