json.array!(@basic_food_items) do |basic_food_item|
  json.extract! basic_food_item, :id, :title
  json.url basic_food_item_url(basic_food_item, format: :json)
end
