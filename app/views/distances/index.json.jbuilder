json.array!(@distances) do |distance|
  json.extract! distance, :id, :start_place_id, :end_place_id, :kilometer
  json.url distance_url(distance, format: :json)
end
