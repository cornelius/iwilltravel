class Item < ActiveRecord::Base
  attr_accessible :done, :integer, :integer, :suggested, :text

  belongs_to :trip
end
