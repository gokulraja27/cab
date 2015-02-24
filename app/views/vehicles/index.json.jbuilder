json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :vehicle_type_id
  json.url vehicle_url(vehicle, format: :json)
end
