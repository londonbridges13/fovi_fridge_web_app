class AddImageUrlColumnToBasicFoodItem < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :image_url, :string
  end
end
