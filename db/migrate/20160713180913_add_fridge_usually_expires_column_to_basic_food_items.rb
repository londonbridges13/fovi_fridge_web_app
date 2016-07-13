class AddFridgeUsuallyExpiresColumnToBasicFoodItems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :fridge_usually_expires, :integer
  end
end
