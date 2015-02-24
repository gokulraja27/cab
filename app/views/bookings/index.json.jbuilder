json.array!(@bookings) do |booking|
  json.extract! booking, :id, :from_place, :to_place, :from_date, :to_date, :vehicle_id
  json.url booking_url(booking, format: :json)
end
