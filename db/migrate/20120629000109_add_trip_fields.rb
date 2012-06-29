class AddTripFields < ActiveRecord::Migration
  def up
    add_column :trips, :location, :string
    add_column :trips, :from, :date
    add_column :trips, :to, :date
  end

  def down
    remove_column :trips, :location
    remove_column :trips, :from
    remove_column :trips, :to
  end
end
