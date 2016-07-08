json.array!(@fridges) do |fridge|
  json.extract! fridge, :id
  json.url fridge_url(fridge, format: :json)
end
