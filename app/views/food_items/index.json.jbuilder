json.array!(@food_items) do |food_item|
  json.extract! food_item, :id, :title
  json.url food_item_url(food_item, format: :json)
end
