json.array!(@parks) do |park|
  json.extract! park, :id, :name, :location
  json.url park_url(park, format: :json)
end
