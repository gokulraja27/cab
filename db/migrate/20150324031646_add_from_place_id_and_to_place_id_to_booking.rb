class AddFromPlaceIdAndToPlaceIdToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :from_place_id, :integer
    add_column :bookings, :to_place_id, :integer
  end
end
