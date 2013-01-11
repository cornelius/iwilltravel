class Trip < ActiveRecord::Base
  has_many :items, :dependent => :destroy
  
  def complete?
    location && from && to
  end
end
