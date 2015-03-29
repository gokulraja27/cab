class AddDistanceIdToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :distance_id, :integer
  end
end
