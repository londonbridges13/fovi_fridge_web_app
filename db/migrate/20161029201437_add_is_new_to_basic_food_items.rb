class AddIsNewToBasicFoodItems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :is_new, :boolean
  end
end
