class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :from_place
      t.string :to_place
      t.date :from_date
      t.date :to_date
      t.references :vehicle, index: true

      t.timestamps null: false
    end
    add_foreign_key :bookings, :vehicles
  end
end
