json.array!(@rides) do |ride|
  json.extract! ride, :id, :name, :park_id
  json.url ride_url(ride, format: :json)
end
