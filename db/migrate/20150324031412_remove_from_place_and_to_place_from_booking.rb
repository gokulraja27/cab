class RemoveFromPlaceAndToPlaceFromBooking < ActiveRecord::Migration
  def change
    remove_column :bookings, :from_place
    remove_column :bookings, :to_place
  end
end
