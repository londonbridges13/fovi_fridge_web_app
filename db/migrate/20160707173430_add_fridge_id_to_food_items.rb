class AddFridgeIdToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :fridge_id, :integer
  end
end
