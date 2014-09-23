json.array!(@places) do |place|
  json.extract! place, :id, :tipo
  json.url place_url(place, format: :json)
end
