json.array!(@suggested_food_items) do |suggested_food_item|
  json.extract! suggested_food_item, :id, :title
  json.url suggested_food_item_url(suggested_food_item, format: :json)
end
